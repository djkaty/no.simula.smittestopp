.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOB_NAME_TAG:Ljava/lang/String; = "blobName"

.field public static final BLOB_SIZE_IN_BYTES_TAG:Ljava/lang/String; = "blobSizeInBytes"

.field public static final BLOB_URI_TAG:Ljava/lang/String; = "blobUri"

.field public static final DEVICE_ID_TAG:Ljava/lang/String; = "deviceId"

.field public static final ENQUEUED_TIME_UTC_TAG:Ljava/lang/String; = "enqueuedTimeUtc"

.field public static final LAST_UPDATED_TIME_TAG:Ljava/lang/String; = "lastUpdatedTime"


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

.field public blobSizeInBytes:Ljava/lang/Long;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "blobSizeInBytes"
    .end annotation
.end field

.field public blobUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "blobUri"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "deviceId"
    .end annotation
.end field

.field public enqueuedTimeUtc:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "enqueuedTimeUtc"
    .end annotation
.end field

.field public transient enqueuedTimeUtcDate:Ljava/util/Date;

.field public lastUpdatedTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "lastUpdatedTime"
    .end annotation
.end field

.field public transient lastUpdatedTimeDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->deviceId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobUri:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTime:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    .line 41
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->deviceId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobUri:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTime:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtc:Ljava/lang/String;

    .line 8
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 11
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 13
    :try_start_0
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateBlobName(Ljava/lang/String;)V

    .line 20
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtc:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 21
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 22
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 25
    :goto_0
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->deviceId:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobUri:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobName:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobName:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTime:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtc:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtc:Ljava/lang/String;

    .line 30
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    .line 31
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtcDate:Ljava/util/Date;

    .line 32
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->stringToDateTimeOffset(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTimeDate:Ljava/util/Date;

    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "negative size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 34
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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlobSizeInBytesTag()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobSizeInBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getBlobUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->blobUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnqueuedTimeUtc()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->enqueuedTimeUtcDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastUpdatedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadNotificationParser;->lastUpdatedTimeDate:Ljava/util/Date;

    return-object v0
.end method
