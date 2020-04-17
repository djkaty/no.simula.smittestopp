.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOUDTODEVICEMETHOD_TAG:Ljava/lang/String; = "cloudToDeviceMethod"

.field public static final transient DATEFORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field public static final JOBID_TAG:Ljava/lang/String; = "jobId"

.field public static final MAXEXECUTIONTIMEINSECONDS_TAG:Ljava/lang/String; = "maxExecutionTimeInSeconds"

.field public static final QUERYCONDITION_TAG:Ljava/lang/String; = "queryCondition"

.field public static final transient SCHEDULE_DEVICE_METHOD:Ljava/lang/String; = "scheduleDeviceMethod"

.field public static final transient SCHEDULE_UPDATE_TWIN:Ljava/lang/String; = "scheduleUpdateTwin"

.field public static final STARTTIME_TAG:Ljava/lang/String; = "startTime"

.field public static final transient TIMEZONE:Ljava/lang/String; = "UTC"

.field public static final TYPE_TAG:Ljava/lang/String; = "type"

.field public static final UPDATETWIN_TAG:Ljava/lang/String; = "updateTwin"


# instance fields
.field public cloudToDeviceMethod:Le/c/c/j;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "cloudToDeviceMethod"
    .end annotation
.end field

.field public jobId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "jobId"
    .end annotation
.end field

.field public jobType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "type"
    .end annotation
.end field

.field public maxExecutionTimeInSeconds:J
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "maxExecutionTimeInSeconds"
    .end annotation
.end field

.field public queryCondition:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "queryCondition"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "startTime"
    .end annotation
.end field

.field public updateTwin:Le/c/c/j;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "updateTwin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    .line 27
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    if-eqz p2, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->validateCommonFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->toJsonElement()Le/c/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    const-string p1, "scheduleDeviceMethod"

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->jobType:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null cloudToDeviceMethod parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    if-eqz p2, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->validateCommonFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    .line 13
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->toJsonElement()Le/c/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    const-string p1, "scheduleUpdateTwin"

    .line 14
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->jobType:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null TwinParser parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    .line 19
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    if-eqz p2, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->validateCommonFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    .line 21
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->toJsonElement()Le/c/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->updateTwin:Le/c/c/j;

    const-string p1, "scheduleUpdateTwin"

    .line 22
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->jobType:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->cloudToDeviceMethod:Le/c/c/j;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null twinState parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateCommonFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->jobId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->queryCondition:Ljava/lang/String;

    .line 4
    iput-wide p4, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->maxExecutionTimeInSeconds:J

    .line 5
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p2, "UTC"

    .line 6
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsParser;->startTime:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative max execution time in seconds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null start time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
