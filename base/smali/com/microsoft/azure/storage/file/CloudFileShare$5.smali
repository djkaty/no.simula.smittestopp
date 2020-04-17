.class public Lcom/microsoft/azure/storage/file/CloudFileShare$5;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/file/CloudFileShare;->createSnapshotImpl(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/file/CloudFileClient;",
        "Lcom/microsoft/azure/storage/file/CloudFileShare;",
        "Lcom/microsoft/azure/storage/file/CloudFileShare;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/file/CloudFileShare;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$metadata:Ljava/util/HashMap;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->this$0:Lcom/microsoft/azure/storage/file/CloudFileShare;

    iput-object p4, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p6, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$metadata:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->access$000(Lcom/microsoft/azure/storage/file/CloudFileShare;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/file/FileRequest;->snapshotShare(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileClient;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileShare;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc9

    if-eq p3, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-static {p3}, Lcom/microsoft/azure/storage/file/FileResponse;->getSnapshotTime(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p3

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileShare;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileClient;)V

    .line 6
    new-instance p2, Lcom/microsoft/azure/storage/file/FileShareProperties;

    iget-object p3, p1, Lcom/microsoft/azure/storage/file/CloudFileShare;->properties:Lcom/microsoft/azure/storage/file/FileShareProperties;

    invoke-direct {p2, p3}, Lcom/microsoft/azure/storage/file/FileShareProperties;-><init>(Lcom/microsoft/azure/storage/file/FileShareProperties;)V

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->setProperties(Lcom/microsoft/azure/storage/file/FileShareProperties;)V

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$metadata:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->access$100(Lcom/microsoft/azure/storage/file/CloudFileShare;)Ljava/util/HashMap;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/storage/file/CloudFileShare;->setMetadata(Ljava/util/HashMap;)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/file/CloudFileShare;->access$200(Lcom/microsoft/azure/storage/file/CloudFileShare;Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileShare;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p1

    return-object p1
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->val$metadata:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/Map;Lcom/microsoft/azure/storage/OperationContext;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileShare;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileShare;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileShare$5;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
