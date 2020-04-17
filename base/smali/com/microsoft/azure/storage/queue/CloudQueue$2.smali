.class public Lcom/microsoft/azure/storage/queue/CloudQueue$2;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/queue/CloudQueue;->clearImpl(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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

.field public final synthetic val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$2;->this$0:Lcom/microsoft/azure/storage/queue/CloudQueue;

    iput-object p4, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$2;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue;->access$000(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueue$2;->val$options:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    .line 3
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/queue/QueueRequest;->clearMessages(Ljava/net/URI;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$2;->buildRequest(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/queue/CloudQueue;

    check-cast p2, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$2;->preProcessResponse(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/queue/CloudQueue;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    :cond_0
    const/4 p1, 0x0

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/queue/CloudQueue$2;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
