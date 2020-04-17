.class public Lcom/microsoft/azure/storage/ServiceClient$3;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/ServiceClient;->uploadServicePropertiesImpl(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/OperationContext;Z)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/ServiceClient;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/ServiceClient;

.field public final synthetic val$descriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/RequestOptions;

.field public final synthetic val$sendStream:Ljava/io/ByteArrayInputStream;

.field public final synthetic val$signAsTable:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/ByteArrayInputStream;Lcom/microsoft/azure/storage/core/StreamMd5AndLength;Lcom/microsoft/azure/storage/RequestOptions;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->this$0:Lcom/microsoft/azure/storage/ServiceClient;

    iput-object p4, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$sendStream:Ljava/io/ByteArrayInputStream;

    iput-object p5, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$descriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    iput-object p6, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$options:Lcom/microsoft/azure/storage/RequestOptions;

    iput-boolean p7, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$signAsTable:Z

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/ServiceClient;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$sendStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setSendStream(Ljava/io/InputStream;)V

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$descriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->this$0:Lcom/microsoft/azure/storage/ServiceClient;

    iget-object p2, p2, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getEndpoint()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$options:Lcom/microsoft/azure/storage/RequestOptions;

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p2, v0, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->setServiceProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/ServiceClient;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$3;->buildRequest(Lcom/microsoft/azure/storage/ServiceClient;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lcom/microsoft/azure/storage/ServiceClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$3;->preProcessResponse(Ljava/lang/Void;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Ljava/lang/Void;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public recoveryAction(Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$sendStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$sendStream:Ljava/io/ByteArrayInputStream;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$3;->setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$descriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-MD5"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$signAsTable:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$descriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signTableRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceClient$3;->val$descriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/ServiceClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$3;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
