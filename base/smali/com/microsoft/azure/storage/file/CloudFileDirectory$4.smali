.class public Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/file/CloudFileDirectory;->uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/file/CloudFileClient;",
        "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->this$0:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    iput-object p4, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->access$000(Lcom/microsoft/azure/storage/file/CloudFileDirectory;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/file/FileRequest;->setDirectoryMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileClient;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->access$100(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Ljava/net/HttpURLConnection;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getMetadata()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/Map;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$4;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
