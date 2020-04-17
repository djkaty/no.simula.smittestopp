.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOB_NAME_TAG:Ljava/lang/String; = "blobName"

.field public static final CONTAINER_NAME_TAG:Ljava/lang/String; = "containerName"

.field public static final CORRELATION_ID_TAG:Ljava/lang/String; = "correlationId"

.field public static final HOST_NAME_TAG:Ljava/lang/String; = "hostName"

.field public static final SAS_TOKEN_TAG:Ljava/lang/String; = "sasToken"


# instance fields
.field public blobName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "blobName"
    .end annotation
.end field

.field public containerName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "containerName"
    .end annotation
.end field

.field public correlationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "correlationId"
    .end annotation
.end field

.field public hostName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "hostName"
    .end annotation
.end field

.field public sasToken:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "sasToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->correlationId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->hostName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->containerName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->blobName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->sasToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->correlationId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->hostName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->containerName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->blobName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->sasToken:Ljava/lang/String;

    .line 7
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 10
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 12
    :try_start_0
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->hostName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 17
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->containerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->correlationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->blobName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateBlobName(Ljava/lang/String;)V

    .line 20
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->sasToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 21
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->hostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->hostName:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->containerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->containerName:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->correlationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->correlationId:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->blobName:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->blobName:Ljava/lang/String;

    .line 25
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->sasToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->sasToken:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBlobName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->blobName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->containerName:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->correlationId:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getSasToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadResponseParser;->sasToken:Ljava/lang/String;

    return-object v0
.end method
