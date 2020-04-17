.class public Lcom/microsoft/azure/storage/queue/CloudQueue$9;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/queue/CloudQueue;->retrieveMessagesImpl(IILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
        "Lcom/microsoft/azure/storage/queue/CloudQueue;",
        "Ljava/util/ArrayList<",
        "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/queue/CloudQueue;

.field public final synthetic val$numberOfMessages:I

.field public final synthetic val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

.field public final synthetic val$visibilityTimeoutInSeconds:I


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->this$0:Lcom/microsoft/azure/storage/queue/CloudQueue;

    iput-object p4, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    iput p5, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$numberOfMessages:I

    iput p6, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$visibilityTimeoutInSeconds:I

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 2
    invoke-static {p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue;->access$000(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    iget v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$numberOfMessages:I

    iget v1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$visibilityTimeoutInSeconds:I

    .line 3
    invoke-static {p1, p2, p3, v0, v1}, Lcom/microsoft/azure/storage/queue/QueueRequest;->retrieveMessages(Ljava/net/URI;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;II)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->buildRequest(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueue;

    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->preProcessResponse(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1}, Lcom/microsoft/azure/storage/queue/CloudQueue;->access$100(Lcom/microsoft/azure/storage/queue/CloudQueue;)Z

    move-result p1

    .line 5
    invoke-static {p2, p1}, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->readMessages(Ljava/io/InputStream;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object v0

    iget-object v1, p3, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    .line 9
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->decryptMessage(Ljava/lang/String;Ljava/lang/Boolean;)[B

    move-result-object v0

    .line 11
    invoke-virtual {p3, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setMessageContent([B)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$9;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
