.class public Lcom/microsoft/azure/storage/table/CloudTable$2;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/table/CloudTable;->downloadPermissionsImpl(Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/table/CloudTableClient;",
        "Lcom/microsoft/azure/storage/table/CloudTable;",
        "Lcom/microsoft/azure/storage/table/TablePermissions;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/table/CloudTable;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/table/TableRequestOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTable$2;->this$0:Lcom/microsoft/azure/storage/table/CloudTable;

    iput-object p4, p0, Lcom/microsoft/azure/storage/table/CloudTable$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/CloudTable;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/table/CloudTable$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableRequest;->getAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTable$2;->buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public parseErrorDetails()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/TableStorageErrorDeserializer;->parseErrorDetails(Lcom/microsoft/azure/storage/core/StorageRequest;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object v0

    return-object v0
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TablePermissions;)Lcom/microsoft/azure/storage/table/TablePermissions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-class p2, Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;

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
    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTable;

    check-cast p3, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p5, Lcom/microsoft/azure/storage/table/TablePermissions;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/table/CloudTable$2;->postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TablePermissions;)Lcom/microsoft/azure/storage/table/TablePermissions;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TablePermissions;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    .line 4
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/table/TablePermissions;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/table/TablePermissions;-><init>()V

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/CloudTable;

    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTable$2;->preProcessResponse(Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TablePermissions;

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

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signTableRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTable$2;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
