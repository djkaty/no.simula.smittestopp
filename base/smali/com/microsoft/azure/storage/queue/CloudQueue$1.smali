.class public Lcom/microsoft/azure/storage/queue/CloudQueue$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/queue/CloudQueue;->addMessageImpl(Lcom/microsoft/azure/storage/queue/CloudQueueMessage;IILcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/queue/CloudQueue;

.field public final synthetic val$initialVisibilityDelayInSeconds:I

.field public final synthetic val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

.field public final synthetic val$messageBytes:[B

.field public final synthetic val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

.field public final synthetic val$timeToLiveInSeconds:I


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/queue/QueueRequestOptions;IILcom/microsoft/azure/storage/queue/CloudQueueMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->this$0:Lcom/microsoft/azure/storage/queue/CloudQueue;

    iput-object p4, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$messageBytes:[B

    iput-object p5, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    iput p6, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$initialVisibilityDelayInSeconds:I

    iput p7, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$timeToLiveInSeconds:I

    iput-object p8, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$messageBytes:[B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setSendStream(Ljava/io/InputStream;)V

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$messageBytes:[B

    array-length p1, p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 4
    invoke-static {p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue;->access$000(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    iget v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$initialVisibilityDelayInSeconds:I

    iget v1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$timeToLiveInSeconds:I

    .line 5
    invoke-static {p1, p2, p3, v0, v1}, Lcom/microsoft/azure/storage/queue/QueueRequest;->putMessage(Ljava/net/URI;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;II)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->buildRequest(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueue;

    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->preProcessResponse(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object p3

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

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getInsertionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setInsertionTime(Ljava/util/Date;)V

    .line 8
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setExpirationTime(Ljava/util/Date;)V

    .line 9
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getNextVisibleTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setNextVisibleTime(Ljava/util/Date;)V

    .line 10
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setMessageId(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getPopReceipt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setPopReceipt(Ljava/lang/String;)V

    return-object p3
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->val$messageBytes:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
