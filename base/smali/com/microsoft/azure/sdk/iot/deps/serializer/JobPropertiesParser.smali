.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final END_TIME_UTC_NAME:Ljava/lang/String; = "endTimeUtc"

.field public static final EXCLUDE_KEYS_IN_EXPORT_NAME:Ljava/lang/String; = "excludeKeysInExport"

.field public static final FAILURE_REASON_NAME:Ljava/lang/String; = "failureReason"

.field public static final INPUT_BLOB_CONTAINER_URI_NAME:Ljava/lang/String; = "inputBlobContainerUri"

.field public static final JOB_ID_NAME:Ljava/lang/String; = "jobId"

.field public static final OUTPUT_BLOB_CONTAINER_URI_NAME:Ljava/lang/String; = "outputBlobContainerUri"

.field public static final PROGRESS_NAME:Ljava/lang/String; = "progress"

.field public static final START_TIME_UTC_NAME:Ljava/lang/String; = "startTimeUtc"

.field public static final STATUS_NAME:Ljava/lang/String; = "status"

.field public static final STORAGE_AUTHENTICATION_TYPE:Ljava/lang/String; = "storageAuthenticationType"

.field public static final TYPE_NAME:Ljava/lang/String; = "type"

.field public static transient gson:Lcom/google/gson/Gson;


# instance fields
.field public transient endTimeUtc:Ljava/util/Date;

.field public endTimeUtcString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "endTimeUtc"
    .end annotation
.end field

.field public excludeKeysInExport:Z
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "excludeKeysInExport"
    .end annotation
.end field

.field public failureReason:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "failureReason"
    .end annotation
.end field

.field public inputBlobContainerUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "inputBlobContainerUri"
    .end annotation
.end field

.field public jobId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "jobId"
    .end annotation
.end field

.field public outputBlobContainerUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "outputBlobContainerUri"
    .end annotation
.end field

.field public progress:I
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "progress"
    .end annotation
.end field

.field public transient startTimeUtc:Ljava/util/Date;

.field public startTimeUtcString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "startTimeUtc"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "status"
    .end annotation
.end field

.field public storageAuthenticationType:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "storageAuthenticationType"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->getJobIdFinal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->getJobIdFinal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->inputBlobContainerUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->inputBlobContainerUri:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->type:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->status:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->jobId:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->jobId:Ljava/lang/String;

    .line 13
    iget-boolean v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->excludeKeysInExport:Z

    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->excludeKeysInExport:Z

    .line 14
    iget v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->progress:I

    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->progress:I

    .line 15
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->outputBlobContainerUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->outputBlobContainerUri:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->failureReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->failureReason:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->storageAuthenticationType:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->storageAuthenticationType:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtcString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtcString:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtcString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtc:Ljava/util/Date;

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtcString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 22
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtcString:Ljava/lang/String;

    .line 23
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtcString:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtc:Ljava/util/Date;

    :cond_1
    return-void

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json is missing the jobId field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEndTimeUtc()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtc:Ljava/util/Date;

    return-object v0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getInputBlobContainerUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->inputBlobContainerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getJobId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->jobId:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobIdFinal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->jobId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputBlobContainerUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->outputBlobContainerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->progress:I

    return v0
.end method

.method public getStartTimeUtc()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtc:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageAuthenticationType()Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->storageAuthenticationType:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isExcludeKeysInExport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->excludeKeysInExport:Z

    return v0
.end method

.method public setEndTimeUtc(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtc:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtcString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtcString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setExcludeKeysInExport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->excludeKeysInExport:Z

    return-void
.end method

.method public setFailureReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->failureReason:Ljava/lang/String;

    return-void
.end method

.method public setInputBlobContainerUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->inputBlobContainerUri:Ljava/lang/String;

    return-void
.end method

.method public setJobId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->jobId:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "jobId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputBlobContainerUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->outputBlobContainerUri:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->progress:I

    return-void
.end method

.method public setStartTimeUtc(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtc:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtcString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtcString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->status:Ljava/lang/String;

    return-void
.end method

.method public setStorageAuthenticationType(Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->storageAuthenticationType:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->type:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtc:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->startTimeUtcString:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtc:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->endTimeUtcString:Ljava/lang/String;

    .line 5
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobPropertiesParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
