.class public final Lcom/microsoft/azure/storage/file/CloudFileShare;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

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

.field public properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

.field public snapshotID:Ljava/lang/String;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->metadata:Ljava/util/HashMap;

    .line 16
    new-instance v0, Lcom/microsoft/azure/storage/file/FileShareProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->name:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->metadata:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/file/FileShareProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->name:Ljava/lang/String;

    const-string v0, "client"

    .line 5
    invoke-static {v0, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "shareName"

    .line 6
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/file/CloudFileShare;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getTransformedAddress()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/storage/file/CloudFileShare;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->metadata:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/azure/storage/file/CloudFileShare;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->metadata:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/storage/file/CloudFileShare;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->updatePropertiesFromResponse(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private createImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileShare$1;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/file/CloudFileShare$1;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    return-object v0
.end method

.method private createSnapshotImpl(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/file/CloudFileShare$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFileShare$5;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/util/HashMap;)V

    return-object v7
.end method

.method private deleteImpl(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/file/CloudFileShare$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFileShare$2;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;)V

    return-object v7
.end method

.method private downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileShare$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileShare$3;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private downloadPermissionsImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Lcom/microsoft/azure/storage/file/FileSharePermissions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileShare$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileShare$4;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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

.method private existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/file/CloudFileShare$7;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFileShare$7;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v7
.end method

.method private getSharedAccessCanonicalName()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "file"

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

.method private getStatsImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Lcom/microsoft/azure/storage/file/ShareStats;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileShare$6;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/file/CloudFileShare$6;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    return-object v0
.end method

.method private getTransformedAddress()Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

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

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/PathUtility;->stripURIQueryAndFragment(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/PathUtility;->parseQueryString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "sharesnapshot"

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    array-length v2, v0

    if-lez v2, :cond_0

    .line 7
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->parseQuery(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    .line 11
    new-instance v1, Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    .line 13
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getServiceClientBaseAddress(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    invoke-direct {v1, v2, p2}, Lcom/microsoft/azure/storage/file/CloudFileClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 14
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getShareNameFromUri(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->name:Ljava/lang/String;
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

.method private updatePropertiesFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getProperties()Lcom/microsoft/azure/storage/file/FileShareProperties;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/file/FileShareProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getProperties()Lcom/microsoft/azure/storage/file/FileShareProperties;

    move-result-object v0

    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setEtag(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getProperties()Lcom/microsoft/azure/storage/file/FileShareProperties;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setLastModified(Ljava/util/Date;)V

    :cond_1
    return-void
.end method

.method private uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileShare$8;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileShare$8;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private uploadPermissionsImpl(Lcom/microsoft/azure/storage/file/FileSharePermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/FileSharePermissions;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/Permissions;->getSharedAccessPolicies()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/microsoft/azure/storage/SharedAccessPolicySerializer;->writeSharedAccessIdentifiersToStream(Ljava/util/HashMap;Ljava/io/StringWriter;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 4
    new-instance p1, Lcom/microsoft/azure/storage/file/CloudFileShare$10;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/azure/storage/file/CloudFileShare$10;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {v0, p1, v0}, Lcom/microsoft/azure/storage/StorageException;->translateException(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Exception;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 7
    throw p1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {v0, p1, v0}, Lcom/microsoft/azure/storage/StorageException;->translateException(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Exception;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 9
    throw p1

    :catch_2
    move-exception p1

    .line 10
    invoke-static {v0, p1, v0}, Lcom/microsoft/azure/storage/StorageException;->translateException(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Exception;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 11
    throw p1
.end method

.method private uploadPropertiesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileShare$9;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileShare$9;-><init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method


# virtual methods
.method public assertNoSnapshot()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot perform this operation on a share representing a snapshot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->create(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getShareQuota()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getShareQuota()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x1400

    const-string v1, "Share Quota"

    invoke-static/range {v1 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->createImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 10
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public createIfNotExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->createIfNotExists(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public createIfNotExists(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->create(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    const-string v0, "ShareAlreadyExists"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 7
    :cond_1
    throw p1
.end method

.method public final createSnapshot()Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->createSnapshot(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    return-object v0
.end method

.method public final createSnapshot(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->createSnapshot(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p1

    return-object p1
.end method

.method public final createSnapshot(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 1
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
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->createSnapshotImpl(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileShare;

    return-object p1
.end method

.method public delete()V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->delete(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->delete(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->deleteImpl(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public deleteIfExists()Z
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->deleteIfExists(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->deleteIfExists(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public deleteIfExists(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFileShare;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFileShare;->delete(Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    const-string p3, "ShareNotFound"

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

.method public downloadAttributes()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public downloadPermissions()Lcom/microsoft/azure/storage/file/FileSharePermissions;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->downloadPermissions(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileSharePermissions;

    move-result-object v0

    return-object v0
.end method

.method public downloadPermissions(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileSharePermissions;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->downloadPermissionsImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/file/FileSharePermissions;

    return-object p1
.end method

.method public exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getSharedAccessCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    .line 4
    iget-object v8, v0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    const-string v12, "s"

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/microsoft/azure/storage/file/FileShareProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    return-object v0
.end method

.method public final getQualifiedUri()Ljava/net/URI;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getUri()Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "sharesnapshot=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getRootDirectoryReference()Lcom/microsoft/azure/storage/file/CloudFileDirectory;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileShare;)V

    return-object v0
.end method

.method public getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    return-object v0
.end method

.method public final getSnapshot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcom/microsoft/azure/storage/file/ShareStats;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStats(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/ShareStats;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/ShareStats;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStatsImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 8
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/file/ShareStats;

    return-object p1
.end method

.method public getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final isSnapshot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public setProperties(Lcom/microsoft/azure/storage/file/FileShareProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    return-void
.end method

.method public uploadMetadata()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/file/FileSharePermissions;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->uploadPermissions(Lcom/microsoft/azure/storage/file/FileSharePermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/file/FileSharePermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->uploadPermissionsImpl(Lcom/microsoft/azure/storage/file/FileSharePermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final uploadProperties()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getShareQuota()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getShareQuota()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x1400

    const-string v1, "Share Quota"

    invoke-static/range {v1 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    :cond_0
    if-nez p3, :cond_1

    .line 5
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->uploadPropertiesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 10
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
