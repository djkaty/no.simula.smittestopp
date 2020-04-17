.class public final Lcom/microsoft/azure/storage/file/CloudFile;
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

.field public properties:Lcom/microsoft/azure/storage/file/FileProperties;

.field public share:Lcom/microsoft/azure/storage/file/CloudFileShare;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public streamMinimumReadSizeInBytes:I

.field public streamWriteSizeInBytes:I


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/file/CloudFile;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x400000

    .line 5
    iput v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamWriteSizeInBytes:I

    .line 6
    iput v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamMinimumReadSizeInBytes:I

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileShare;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x400000

    .line 28
    iput v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamWriteSizeInBytes:I

    .line 29
    iput v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamMinimumReadSizeInBytes:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    .line 31
    new-instance v0, Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    const-string v0, "uri"

    .line 32
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fileName"

    .line 33
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "share"

    .line 34
    invoke-static {v0, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 37
    iput-object p3, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    .line 38
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFile;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x400000

    .line 11
    iput v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamWriteSizeInBytes:I

    .line 12
    iput v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamMinimumReadSizeInBytes:I

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    .line 14
    new-instance v0, Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    .line 16
    new-instance v0, Lcom/microsoft/azure/storage/file/FileProperties;

    iget-object v1, p1, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/storage/file/FileProperties;-><init>(Lcom/microsoft/azure/storage/file/FileProperties;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    .line 17
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 21
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    .line 22
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/CloudFile;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    .line 23
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 24
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/CloudFile;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getStreamMinimumReadSizeInBytes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->setStreamMinimumReadSizeInBytes(I)V

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getStreamWriteSizeInBytes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/file/CloudFile;->setStreamWriteSizeInBytes(I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/file/CloudFile;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method private abortCopyImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "copyId"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFile$1;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile$1;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/file/CloudFile;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/microsoft/azure/storage/file/CloudFile;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/storage/file/CloudFile;)Lcom/microsoft/azure/storage/file/FileProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/file/FileProperties;)Lcom/microsoft/azure/storage/file/FileProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    return-object p1
.end method

.method private createImpl(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/file/CloudFile$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile$3;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;J)V

    return-object v8
.end method

.method private deleteEmptyFileOnException(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private deleteImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFile$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile$4;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

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
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFile$7;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile$7;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private downloadFileRangesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/file/FileRange;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFile$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile$5;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private final downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 12
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/io/OutputStream;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    .line 2
    new-instance v11, Lcom/microsoft/azure/storage/file/CloudFile$6;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/microsoft/azure/storage/file/CloudFile$6;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/io/OutputStream;J)V

    return-object v11
.end method

.method private final exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/file/CloudFile$8;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile$8;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v7
.end method

.method public static getParentNameFromURI(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/CloudFileShare;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceAddress"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "share"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p0

    .line 6
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/core/Utility;->safeRelativize(Ljava/net/URI;Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    const-string v3, ""

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    return-object v3
.end method

.method private openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;
    .locals 7

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v6, p4

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p4

    invoke-virtual {p4}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 3
    iget-object p4, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    const/4 v0, 0x0

    invoke-static {p3, p4, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;Z)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->create(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getStoreFileContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p0, p2, p3, v6}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/AccessCondition;->generateLeaseCondition(Ljava/lang/String;)Lcom/microsoft/azure/storage/AccessCondition;

    move-result-object p2

    :cond_2
    move-object v4, p2

    .line 9
    new-instance p2, Lcom/microsoft/azure/storage/file/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p2

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/FileOutputStream;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object p2

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MD5 cannot be calculated for an existing file because it would require reading the existing data. Please disable StoreFileContentMD5."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

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
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v2

    .line 7
    new-instance v3, Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

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

    iput-object v3, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 10
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/microsoft/azure/storage/core/PathUtility;->getFileNameFromURI(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->name:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

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

.method private putRangeImpl(Lcom/microsoft/azure/storage/file/FileRange;Lcom/microsoft/azure/storage/file/FileRangeOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/file/FileRange;",
            "Lcom/microsoft/azure/storage/file/FileRangeOperationType;",
            "[BJ",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/microsoft/azure/storage/file/CloudFile$9;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p7

    move-object v11, p1

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lcom/microsoft/azure/storage/file/CloudFile$9;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRangeOperationType;[BJLcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRange;Ljava/lang/String;)V

    return-object v13
.end method

.method private putRangeInternal(Lcom/microsoft/azure/storage/file/FileRange;Lcom/microsoft/azure/storage/file/FileRangeOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/microsoft/azure/storage/file/CloudFile;->putRangeImpl(Lcom/microsoft/azure/storage/file/FileRange;Lcom/microsoft/azure/storage/file/FileRangeOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 3
    invoke-virtual {p8}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 4
    invoke-static {v0, p0, p1, p2, p9}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method private resizeImpl(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/file/CloudFile$12;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile$12;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;J)V

    return-object v8
.end method

.method private startCopyImpl(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A lease condition cannot be specified on the source of a copy."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    new-instance v8, Lcom/microsoft/azure/storage/file/CloudFile$2;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile$2;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/net/URI;)V

    return-object v8
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
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFile$10;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile$10;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
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
            "Lcom/microsoft/azure/storage/file/CloudFile;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/file/CloudFile$11;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile$11;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method


# virtual methods
.method public final abortCopy(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->abortCopy(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final abortCopy(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->abortCopyImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public clearRange(JJ)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile;->clearRange(JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public clearRange(JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 13
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-wide v0, p1

    if-nez p7, :cond_0

    .line 2
    new-instance v2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p7

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    move-object v2, p0

    .line 4
    iget-object v3, v2, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-object/from16 v4, p6

    invoke-static {v4, v3}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object v11

    .line 5
    new-instance v4, Lcom/microsoft/azure/storage/file/FileRange;

    add-long v5, v0, p3

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-direct {v4, p1, p2, v5, v6}, Lcom/microsoft/azure/storage/file/FileRange;-><init>(JJ)V

    .line 6
    sget-object v5, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->CLEAR:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-wide/from16 v7, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v12}, Lcom/microsoft/azure/storage/file/CloudFile;->putRangeInternal(Lcom/microsoft/azure/storage/file/FileRange;Lcom/microsoft/azure/storage/file/FileRangeOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(J)V
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->create(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p5, :cond_0

    .line 2
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p4

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFile;->createImpl(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->deleteImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final deleteIfExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public final deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    const-string p3, "ResourceNotFound"

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

.method public final download(Ljava/io/OutputStream;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p3

    .line 5
    iget-object v7, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v7, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final downloadAttributes()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 6
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public downloadFileRanges()Ljava/util/ArrayList;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/file/FileRange;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadFileRanges(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileRanges(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/file/FileRange;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadFileRangesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 6
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public final downloadRange(JLjava/lang/Long;Ljava/io/OutputStream;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadRange(JLjava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final downloadRange(JLjava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    :cond_0
    if-nez p7, :cond_1

    .line 3
    new-instance p7, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p7}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_1
    invoke-virtual {p7}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p6, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p6

    .line 6
    iget-object v7, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v7, p0, p1, p2, p7}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final downloadRangeInternal(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I
    .locals 12
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v7, p0

    move/from16 v0, p5

    if-ltz v0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    :cond_0
    if-nez p8, :cond_1

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v8, v1

    goto :goto_0

    :cond_1
    move-object/from16 v8, p8

    .line 3
    :goto_0
    iget-object v1, v7, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-object/from16 v2, p7

    invoke-static {v2, v1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object v9

    .line 4
    new-instance v10, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;

    move-object/from16 v1, p4

    invoke-direct {v10, v1, v0}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;-><init>([BI)V

    .line 5
    iget-object v11, v7, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, v10

    move-object/from16 v4, p6

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v0

    .line 7
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v1

    .line 8
    invoke-static {v11, p0, v0, v1, v8}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->getPosition()I

    move-result v0

    return v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final downloadRangeToByteArray(JLjava/lang/Long;[BI)I
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadRangeToByteArray(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    move-result p1

    return p1
.end method

.method public final downloadRangeToByteArray(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v4, p4

    const-string v0, "buffer"

    .line 2
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v5, p5

    int-to-long v2, v5

    add-long/2addr v0, v2

    array-length v2, v4

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move v5, p5

    :goto_0
    if-nez p8, :cond_2

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object/from16 v8, p8

    .line 6
    :goto_1
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 7
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadRangeInternal(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    move-result v0

    return v0
.end method

.method public downloadText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadText(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadText(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFile;->download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final downloadToByteArray([BI)I
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadToByteArray([BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    move-result p1

    return p1
.end method

.method public final downloadToByteArray([BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "buffer"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p2, :cond_2

    .line 3
    array-length v0, p1

    if-ge p2, v0, :cond_1

    if-nez p5, :cond_0

    .line 4
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p4

    .line 7
    new-instance v7, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;

    invoke-direct {v7, p1, p2}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;-><init>([BI)V

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v7

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 10
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 11
    invoke-static {p1, p0, p2, p3, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v7}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->getPosition()I

    move-result p1

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public downloadToFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadToFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public downloadToFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFile;->download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/microsoft/azure/storage/file/CloudFile;->deleteEmptyFileOnException(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    throw p2

    :catch_1
    move-exception p2

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/microsoft/azure/storage/file/CloudFile;->deleteEmptyFileOnException(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8
    throw p2
.end method

.method public final exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public final exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Lcom/microsoft/azure/storage/file/SharedAccessFileHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Lcom/microsoft/azure/storage/file/SharedAccessFileHeaders;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Lcom/microsoft/azure/storage/file/SharedAccessFileHeaders;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;

    move-result-object v15

    const-string v12, "f"

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 6
    invoke-static/range {v9 .. v15}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create Shared Access Signature unless the Account Key credentials are used by the ServiceClient."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/file/SharedAccessFilePolicy;Lcom/microsoft/azure/storage/file/SharedAccessFileHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/file/CloudFileClient;->isUsePathStyleUris()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    .line 7
    invoke-static {v2, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->getCanonicalPathFromCredentials(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyState()Lcom/microsoft/azure/storage/file/CopyState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileProperties;->getCopyState()Lcom/microsoft/azure/storage/file/CopyState;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Lcom/microsoft/azure/storage/file/CloudFileDirectory;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/file/CloudFile;->getParentNameFromURI(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/CloudFileShare;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->parent:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    return-object v0
.end method

.method public final getProperties()Lcom/microsoft/azure/storage/file/FileProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    return-object v0
.end method

.method public final getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    return-object v0
.end method

.method public final getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/CloudFileClient;->isUsePathStyleUris()Z

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->getShareURI(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/azure/storage/file/CloudFileShare;

    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/storage/file/CloudFileShare;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public final getStreamMinimumReadSizeInBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamMinimumReadSizeInBytes:I

    return v0
.end method

.method public final getStreamWriteSizeInBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamWriteSizeInBytes:I

    return v0
.end method

.method public final getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    return-object p1
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final openRead()Lcom/microsoft/azure/storage/file/FileInputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->openRead(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openRead(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileInputStream;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;Z)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/file/FileInputStream;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileInputStream;-><init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v0
.end method

.method public openWriteExisting()Lcom/microsoft/azure/storage/file/FileOutputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openWriteExisting(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openWriteNew(J)Lcom/microsoft/azure/storage/file/FileOutputStream;
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openWriteNew(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/microsoft/azure/storage/file/CloudFile;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public resize(J)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->resize(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public resize(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1

    if-nez p5, :cond_0

    .line 2
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p4

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFile;->resizeImpl(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final setMetadata(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public final setProperties(Lcom/microsoft/azure/storage/file/FileProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->properties:Lcom/microsoft/azure/storage/file/FileProperties;

    return-void
.end method

.method public final setShare(Lcom/microsoft/azure/storage/file/CloudFileShare;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->share:Lcom/microsoft/azure/storage/file/CloudFileShare;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public setStreamMinimumReadSizeInBytes(I)V
    .locals 1

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamMinimumReadSizeInBytes:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MinimumReadSize"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStreamWriteSizeInBytes(I)V
    .locals 1

    .line 1
    sget v0, Lcom/microsoft/azure/storage/Constants;->MAX_FILE_WRITE_SIZE:I

    if-gt p1, v0, :cond_0

    sget v0, Lcom/microsoft/azure/storage/Constants;->MIN_PERMITTED_FILE_WRITE_SIZE:I

    if-lt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/microsoft/azure/storage/file/CloudFile;->streamWriteSizeInBytes:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StreamWriteSizeInBytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudBlob;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->startCopy(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceBlob"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    :cond_0
    move-object v2, v0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/file/CloudFile;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->startCopy(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceFile"

    .line 8
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1, p5}, Lcom/microsoft/azure/storage/file/CloudFile;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Ljava/net/URI;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p5, :cond_0

    .line 11
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 13
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 14
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p4

    .line 15
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFile;->startCopyImpl(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 17
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 18
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public updateEtagAndLastModifiedFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v0

    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileProperties;->setEtag(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/file/FileProperties;->setLastModified(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public updateLengthFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "x-ms-content-length"

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/file/FileProperties;->setLength(J)V

    :cond_0
    return-void
.end method

.method public upload(Ljava/io/InputStream;J)V
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p6, :cond_0

    .line 2
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v5, p6

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p6

    invoke-virtual {p6}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    iget-object p6, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p5, p6}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object v4

    const-wide/16 p5, 0x0

    cmp-long v0, p2, p5

    if-ltz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p5

    if-eqz p5, :cond_1

    const/high16 p5, 0x10000000

    .line 6
    invoke-virtual {p1, p5}, Ljava/io/InputStream;->mark(I)V

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->openWriteNew(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileOutputStream;

    move-result-object p4

    .line 8
    :try_start_0
    invoke-virtual {p4, p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileOutputStream;->write(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/file/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Lcom/microsoft/azure/storage/file/FileOutputStream;->close()V

    .line 10
    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File length must be greater than or equal to 0 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadFromByteArray([BII)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, p3

    move-object v0, p0

    move-object v1, v7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 4
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    return-void
.end method

.method public uploadFromFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 4
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/file/CloudFile;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final uploadMetadata()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final uploadProperties()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadPropertiesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public uploadRange(Ljava/io/InputStream;JJ)V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadRange(Ljava/io/InputStream;JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadRange(Ljava/io/InputStream;JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 15
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v4, p4

    if-nez p8, :cond_0

    .line 2
    new-instance v2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->assertNoSnapshot()V

    move-object v10, p0

    .line 4
    iget-object v2, v10, Lcom/microsoft/azure/storage/file/CloudFile;->fileServiceClient:Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-object/from16 v3, p7

    invoke-static {v3, v2}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object v8

    .line 5
    new-instance v2, Lcom/microsoft/azure/storage/file/FileRange;

    add-long v6, v0, v4

    const-wide/16 v11, 0x1

    sub-long/2addr v6, v11

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/microsoft/azure/storage/file/FileRange;-><init>(JJ)V

    long-to-int v0, v4

    .line 6
    new-array v3, v0, [B

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    int-to-long v11, v7

    cmp-long v13, v11, v4

    if-gez v13, :cond_1

    sub-long v11, v4, v11

    const-wide/32 v13, 0x7fffffff

    .line 7
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    move-object/from16 v11, p1

    invoke-virtual {v11, v3, v7, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    const-string v1, "MD5"

    .line 9
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v3, v6, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 11
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v6, v1

    .line 13
    :goto_2
    sget-object v7, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->UPDATE:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v7

    move-wide/from16 v4, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/azure/storage/file/CloudFile;->putRangeInternal(Lcom/microsoft/azure/storage/file/FileRange;Lcom/microsoft/azure/storage/file/FileRangeOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadText(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadText(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadText(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 7

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    .line 3
    array-length v3, v1

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
