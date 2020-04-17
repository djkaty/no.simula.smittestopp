.class public final Lcom/microsoft/azure/storage/queue/CloudQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public approximateMessageCount:J

.field public messageRequestAddress:Lcom/microsoft/azure/storage/StorageUri;

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

.field public queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

.field public shouldEncodeMessage:Z

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "client"

    .line 8
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "queueName"

    .line 9
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getMessageRequestAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/storage/queue/CloudQueue;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/azure/storage/queue/CloudQueue;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->metadata:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/microsoft/azure/storage/queue/CloudQueue;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->metadata:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/storage/queue/CloudQueue;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getIndividualMessageAddress(Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$502(Lcom/microsoft/azure/storage/queue/CloudQueue;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->approximateMessageCount:J

    return-wide p1
.end method

.method private addMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;IILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            "II",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    invoke-virtual {p1, v0, p4}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getMessageContentForTransfer(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/azure/storage/queue/QueueMessageSerializer;->generateMessageRequestBody(Ljava/lang/String;)[B

    move-result-object v5

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v6, p4

    move v7, p3

    move v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/storage/queue/CloudQueue$1;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/queue/QueueRequestOptions;IILcom/microsoft/azure/storage/queue/CloudQueueMessage;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 6
    throw p1
.end method

.method private clearImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue$2;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method private createImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue$3;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method private deleteImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue$4;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method private deleteMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getId()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getPopReceipt()Ljava/lang/String;

    move-result-object v6

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/queue/CloudQueue$5;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/queue/CloudQueue$5;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Ljava/lang/String;)V

    return-object p1
.end method

.method private downloadAttributesImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$6;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue$6;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method private downloadPermissionsImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Lcom/microsoft/azure/storage/queue/QueuePermissions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$13;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue$13;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method private exists(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->existsImpl(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private existsImpl(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/queue/CloudQueue$7;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/queue/CloudQueue$7;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v6
.end method

.method public static getFirstOrNull(Ljava/lang/Iterable;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;)",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIndividualMessageAddress(Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getMessageRequestAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    return-object p1
.end method

.method private getMessageRequestAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->messageRequestAddress:Lcom/microsoft/azure/storage/StorageUri;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    const-string v0, "messages"

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->messageRequestAddress:Lcom/microsoft/azure/storage/StorageUri;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->messageRequestAddress:Lcom/microsoft/azure/storage/StorageUri;

    return-object p1
.end method

.method private getSharedAccessCanonicalName()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getServiceClient()Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "queue"

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

.method private final getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    return-object p1
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

    iput-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    .line 7
    new-instance v1, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    .line 9
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getServiceClientBaseAddress(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    invoke-direct {v1, v2, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getContainerNameFromUri(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->name:Ljava/lang/String;
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

.method private peekMessagesImpl(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/queue/CloudQueue$8;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/queue/CloudQueue$8;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;I)V

    return-object v6
.end method

.method private retrieveMessagesImpl(IILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/queue/CloudQueue$9;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/queue/CloudQueue$9;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;II)V

    return-object v7
.end method

.method private updateMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;ILjava/util/EnumSet;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/queue/MessageUpdateFields;",
            ">;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    invoke-virtual {p1, v0, p4}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getMessageContentForTransfer(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;)Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$10;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v5, p3

    move-object v7, p1

    move-object v8, p4

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/storage/queue/CloudQueue$10;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/util/EnumSet;Ljava/lang/String;Lcom/microsoft/azure/storage/queue/CloudQueueMessage;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;I)V

    return-object v0
.end method

.method private uploadMetadataImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue$11;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue$11;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method private uploadPermissionsImpl(Lcom/microsoft/azure/storage/queue/QueuePermissions;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/QueuePermissions;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
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
    new-instance p1, Lcom/microsoft/azure/storage/queue/CloudQueue$12;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/queue/CloudQueue$12;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/queue/QueueRequestOptions;)V
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
.method public addMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;)V
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
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/queue/CloudQueue;->addMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;IILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public addMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;IILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "message"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getMessageContentAsByte()[B

    move-result-object v0

    const-string v1, "messageContent"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string p5, "timeToLiveInSeconds"

    aput-object p5, p3, p4

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p3, p4

    const-string p2, "The argument is out of range. Argument name: %s, Value passed: %s."

    .line 6
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const v0, 0x93a80

    if-nez p2, :cond_2

    const p2, 0x93a80

    :cond_2
    if-ltz p2, :cond_4

    add-int/lit8 v1, p2, -0x1

    if-le v1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    int-to-long v2, p3

    const-wide/16 v4, 0x0

    int-to-long v6, v0

    const-string v1, "initialVisibilityDelayInSeconds"

    .line 7
    invoke-static/range {v1 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    if-nez p5, :cond_5

    .line 8
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 9
    :cond_5
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p4

    .line 11
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->assertPolicyIfRequired()V

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/queue/CloudQueue;->addMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;IILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 14
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 15
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->clear(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public clear(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->clearImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public create()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->create(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->createImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public createIfNotExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->createIfNotExists(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public createIfNotExists(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->exists(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->create(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    const-string v0, "QueueAlreadyExists"

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
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->delete(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->deleteImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public deleteIfExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->deleteIfExists(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public deleteIfExists(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->exists(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->delete(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    const-string v0, "QueueNotFound"

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

.method public deleteMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->deleteMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public deleteMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "message"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "messageId"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getPopReceipt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "popReceipt"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->deleteMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 10
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public downloadAttributes()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->downloadAttributes(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public downloadAttributes(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->downloadAttributesImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public downloadPermissions()Lcom/microsoft/azure/storage/queue/QueuePermissions;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->downloadPermissions(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/queue/QueuePermissions;

    move-result-object v0

    return-object v0
.end method

.method public downloadPermissions(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/queue/QueuePermissions;
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->downloadPermissionsImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/queue/QueuePermissions;

    return-object p1
.end method

.method public exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->exists(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->exists(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getSharedAccessCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v6, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForQueue(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, p3, p4, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureForQueue(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create Shared Access Signature unless the Account Key credentials are used by the ServiceClient."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getApproximateMessageCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->approximateMessageCount:J

    return-wide v0
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceClient()Lcom/microsoft/azure/storage/queue/CloudQueueClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    return-object v0
.end method

.method public getShouldEncodeMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    return v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public peekMessage()Lcom/microsoft/azure/storage/queue/CloudQueueMessage;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->peekMessage(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    move-result-object v0

    return-object v0
.end method

.method public peekMessage(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2, p1, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->peekMessages(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getFirstOrNull(Ljava/lang/Iterable;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    move-result-object p1

    return-object p1
.end method

.method public peekMessages(I)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->peekMessages(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public peekMessages(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation

    int-to-long v1, p1

    const-string v0, "numberOfMessages"

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x20

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->assertPolicyIfRequired()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->peekMessagesImpl(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public retrieveMessage()Lcom/microsoft/azure/storage/queue/CloudQueueMessage;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    .line 1
    invoke-virtual {p0, v1, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->retrieveMessage(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    move-result-object v0

    return-object v0
.end method

.method public retrieveMessage(ILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue;->retrieveMessages(IILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->getFirstOrNull(Ljava/lang/Iterable;)Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    move-result-object p1

    return-object p1
.end method

.method public retrieveMessages(I)Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    .line 1
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->retrieveMessages(IILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public retrieveMessages(IILcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 17
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    int-to-long v4, v1

    const-string v3, "numberOfMessages"

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x20

    .line 2
    invoke-static/range {v3 .. v9}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    int-to-long v11, v2

    const-string v10, "visibilityTimeoutInSeconds"

    const-wide/16 v13, 0x0

    const-wide/32 v15, 0x93a80

    .line 3
    invoke-static/range {v10 .. v16}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    if-nez p4, :cond_0

    .line 4
    new-instance v3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    .line 5
    :goto_0
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v4, v0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->assertPolicyIfRequired()V

    .line 8
    iget-object v5, v0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 9
    invoke-direct {v0, v1, v2, v4}, Lcom/microsoft/azure/storage/queue/CloudQueue;->retrieveMessagesImpl(IILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 10
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v2

    .line 11
    invoke-static {v5, v0, v1, v2, v3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    return-object v1
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public setShouldEncodeMessage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->shouldEncodeMessage:Z

    return-void
.end method

.method public updateMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/queue/MessageUpdateFields;->VISIBILITY:Lcom/microsoft/azure/storage/queue/MessageUpdateFields;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/queue/CloudQueue;->updateMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;ILjava/util/EnumSet;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public updateMessage(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;ILjava/util/EnumSet;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/queue/MessageUpdateFields;",
            ">;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    const-string v0, "message"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "messageId"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getPopReceipt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "popReceipt"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v3, p2

    const-string v2, "visibilityTimeoutInSeconds"

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x93a80

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    if-nez p5, :cond_0

    .line 6
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 7
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p4

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->assertPolicyIfRequired()V

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/queue/CloudQueue;->updateMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;ILjava/util/EnumSet;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 12
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 13
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public uploadMetadata()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->uploadMetadata(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadMetadata(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->uploadMetadataImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/queue/QueuePermissions;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueue;->uploadPermissions(Lcom/microsoft/azure/storage/queue/QueuePermissions;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/queue/QueuePermissions;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue;->queueServiceClient:Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueue;->uploadPermissionsImpl(Lcom/microsoft/azure/storage/queue/QueuePermissions;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
