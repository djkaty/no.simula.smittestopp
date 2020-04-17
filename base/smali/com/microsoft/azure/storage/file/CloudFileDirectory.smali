.class public final Lcom/microsoft/azure/storage/file/CloudFileDirectory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/file/ListFileItem;


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

.field public parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

.field public properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

.field public share:Lcom/microsoft/azure/storage/file/CloudFileShare;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->metadata:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileShare;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->metadata:Ljava/util/HashMap;

    .line 10
    new-instance v0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    const-string v0, "uri"

    .line 11
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "directoryName"

    .line 12
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "share"

    .line 13
    invoke-static {v0, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 16
    iput-object p3, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    .line 17
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/file/CloudFileDirectory;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getTransformedAddress()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->updatePropertiesFromResponse(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private createDirectoryImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    return-object v0
.end method

.method private deleteDirectoryImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileDirectory$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$2;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
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
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileDirectory$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$5;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/file/CloudFileDirectory$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$3;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v7
.end method

.method private getTransformedAddress()Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    return-object v0
.end method

.method private listFilesAndDirectoriesSegmentedImpl(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->FILE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 2
    new-instance v7, Lcom/microsoft/azure/storage/core/ListingContext;

    invoke-direct {v7, p1, p2}, Lcom/microsoft/azure/storage/core/ListingContext;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/file/CloudFileDirectory$6;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v6, p4

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$6;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    return-object p1
.end method

.method private parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 5

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

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 4
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->parseQuery(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    move-result-object v0

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

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
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v2

    .line 7
    new-instance v3, Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    .line 9
    invoke-static {v4, v2}, Lcom/microsoft/azure/storage/core/PathUtility;->getServiceClientBaseAddress(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-direct {v3, v4, p2}, Lcom/microsoft/azure/storage/file/CloudFileClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v3, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 10
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/microsoft/azure/storage/core/PathUtility;->getDirectoryNameFromURI(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/PathUtility;->parseQueryString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "sharesnapshot"

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 13
    array-length p2, p1

    if-lez p2, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p2

    aget-object p1, p1, v1

    iput-object p1, p2, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    :cond_3
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
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getProperties()Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    move-result-object v0

    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setEtag(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getProperties()Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setLastModified(Ljava/util/Date;)V

    :cond_0
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
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method


# virtual methods
.method public create()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->create(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->createDirectoryImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 8
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public createIfNotExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->createIfNotExists(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public createIfNotExists(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->create(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p2

    const/16 v0, 0x199

    if-ne p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResourceAlreadyExists"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 8
    :cond_1
    throw p1
.end method

.method public delete()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->deleteDirectoryImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public deleteIfExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    const-string p3, "ResourceNotFound"

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

.method public downloadAttributes()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public getDirectoryReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFileDirectory;
    .locals 3

    const-string v0, "itemName"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileShare;)V

    return-object v1
.end method

.method public getFileReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFile;
    .locals 3

    const-string v0, "fileName"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/file/CloudFile;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/microsoft/azure/storage/file/CloudFile;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileShare;)V

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/microsoft/azure/storage/file/CloudFileDirectory;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/file/CloudFile;->getParentNameFromURI(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/CloudFileShare;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    return-object v0
.end method

.method public getProperties()Lcom/microsoft/azure/storage/file/FileDirectoryProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    return-object v0
.end method

.method public getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    return-object v0
.end method

.method public getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getUri()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 3
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/file/CloudFileClient;->isUsePathStyleUris()Z

    move-result v2

    .line 4
    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/core/PathUtility;->getShareNameFromUri(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/CloudFileClient;->getShareReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public listFilesAndDirectories()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->listFilesAndDirectories(Ljava/lang/String;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listFilesAndDirectories(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->listFilesAndDirectories(Ljava/lang/String;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listFilesAndDirectories(Ljava/lang/String;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v5, p3

    .line 4
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object p3, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, p3}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    new-instance p3, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 7
    new-instance v6, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->listFilesAndDirectoriesSegmentedImpl(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v4

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v6
.end method

.method public listFilesAndDirectoriesSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->listFilesAndDirectoriesSegmented(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listFilesAndDirectoriesSegmented(Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->listFilesAndDirectoriesSegmented(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listFilesAndDirectoriesSegmented(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 3
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p4

    .line 6
    sget-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->FILE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 8
    invoke-virtual {v0, p3}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    .line 9
    iget-object p3, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 10
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->listFilesAndDirectoriesSegmentedImpl(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 11
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 12
    invoke-static {p3, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ResultSegment;

    return-object p1
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public final setProperties(Lcom/microsoft/azure/storage/file/FileDirectoryProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    return-void
.end method

.method public final setShare(Lcom/microsoft/azure/storage/file/CloudFileShare;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public uploadMetadata()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
