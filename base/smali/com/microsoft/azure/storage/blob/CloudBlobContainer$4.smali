.class public Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadPermissionsImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
        "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
        "Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->access$000(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-static {p1, p2, v0, p3}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-class p2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;

    .line 3
    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/SharedAccessPolicyHandler;->getAccessIdentifiers(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 5
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/Permissions;->getSharedAccessPolicies()Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p5
.end method

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    check-cast p3, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p5, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;
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

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->updatePropertiesFromResponse(Ljava/net/HttpURLConnection;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getAcl(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getContainerAcl(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    move-result-object p2

    .line 7
    iget-object p1, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->getPublicAccess()Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    return-object p2
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
