.class public Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/file/CloudFileDirectory;->createDirectoryImpl(Lcom/microsoft/azure/storage/file/FileRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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

.field public final synthetic val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/file/FileRequestOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->this$0:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    iput-object p4, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->access$000(Lcom/microsoft/azure/storage/file/CloudFileDirectory;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    .line 3
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileRequest;->createDirectory(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileClient;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0xc9

    if-eq p3, v1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/CloudFileClient;->isUsePathStyleUris()Z

    move-result p2

    invoke-static {p3, p2}, Lcom/microsoft/azure/storage/file/FileResponse;->getFileDirectoryAttributes(Ljava/net/HttpURLConnection;Z)Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->getProperties()Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->setProperties(Lcom/microsoft/azure/storage/file/FileDirectoryProperties;)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    return-object v0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileDirectory;Lcom/microsoft/azure/storage/OperationContext;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFileDirectory$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
