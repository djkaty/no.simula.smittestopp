.class public final Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

.field public static final FILE_UPLOAD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

.field public static final HTTPS_URL_STRING:Ljava/lang/String; = "https://"

.field public static final PATH_SEPARATOR_STRING:Ljava/lang/String; = "/"

.field public static final THREAD_NAME:Ljava/lang/String; = "azure-iot-sdk-FileUploadTask"

.field public static final UTF_8_STRING:Ljava/lang/String; = "UTF-8"

.field public static final log:Lk/f/b;


# instance fields
.field public blobName:Ljava/lang/String;

.field public blobURI:Ljava/net/URI;

.field public correlationId:Ljava/lang/String;

.field public httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

.field public inputStream:Ljava/io/InputStream;

.field public streamLength:J

.field public userCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

.field public userCallbackContext:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->log:Lk/f/b;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/ObjectLock;-><init>()V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->FILE_UPLOAD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->blobName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->inputStream:Ljava/io/InputStream;

    .line 5
    iput-wide p3, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->streamLength:J

    .line 6
    iput-object p6, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->userCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    .line 7
    iput-object p7, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->userCallbackContext:Ljava/lang/Object;

    .line 8
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->log:Lk/f/b;

    const-string p2, "HttpsFileUpload object is created successfully"

    invoke-interface {p1, p2}, Lk/f/b;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "statusCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "httpsTransportManager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "streamLength is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "blobName is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addBlobInformation(Lcom/microsoft/azure/sdk/iot/device/Message;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object p1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->correlationId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->getBlobName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->blobName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->getContainerName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->getSasToken()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->blobName:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 9
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->blobURI:Ljava/net/URI;

    return-void
.end method

.method private getContainer()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadRequestParser;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->blobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadRequestParser;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadRequestParser;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setIotHubMethod(Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;)V

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->FILE_UPLOAD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->open()V

    .line 6
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-virtual {v2, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->sendFileUploadMessage(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->close()V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v0

    .line 10
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v0, v2, :cond_0

    .line 11
    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->addBlobInformation(Lcom/microsoft/azure/sdk/iot/device/Message;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v0, v1, :cond_1

    .line 13
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendNotification(Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setIotHubMethod(Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;)V

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->FILE_UPLOAD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/c/c/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->open()V

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->sendFileUploadNotification(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->close()V

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Le/c/c/k; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Le/c/c/k; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    :goto_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->log:Lk/f/b;

    const-string v1, "File upload failed to report status to the iothub"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "File upload failed to upload the stream to the blob"

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "azure-iot-sdk-FileUploadTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->getContainer()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 4
    :goto_0
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->log:Lk/f/b;

    invoke-interface {v2, v0, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 6
    :goto_1
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :try_start_1
    new-instance v4, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->blobURI:Ljava/net/URI;

    invoke-direct {v4, v5}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Ljava/net/URI;)V

    .line 8
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->inputStream:Ljava/io/InputStream;

    iget-wide v6, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->streamLength:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->upload(Ljava/io/InputStream;J)V

    .line 9
    new-instance v4, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->correlationId:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Succeed to upload to storage."

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    :try_end_2
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    invoke-direct {p0, v4}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->sendNotification(Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v0, v2, :cond_0

    goto :goto_6

    :cond_0
    :goto_2
    move-object v1, v0

    goto :goto_6

    :catch_4
    move-exception v3

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v4

    goto :goto_3

    :catch_8
    move-exception v4

    goto :goto_3

    :catch_9
    move-exception v4

    :goto_3
    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 13
    :goto_4
    :try_start_3
    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->log:Lk/f/b;

    invoke-interface {v5, v0, v3}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 15
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->correlationId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Failed to upload to storage."

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->sendNotification(Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v0

    .line 17
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v1, v2, :cond_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v4

    .line 18
    :goto_5
    invoke-direct {p0, v3}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->sendNotification(Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 19
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->userCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;->userCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    return-void
.end method
