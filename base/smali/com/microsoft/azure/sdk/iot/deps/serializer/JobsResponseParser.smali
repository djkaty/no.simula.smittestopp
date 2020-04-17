.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOUDTODEVICEMETHOD_TAG:Ljava/lang/String; = "cloudToDeviceMethod"

.field public static final CREATETIME_TAG:Ljava/lang/String; = "createdTime"

.field public static final CREATE_TIME_UTC_TAG:Ljava/lang/String; = "createdDateTimeUtc"

.field public static final DATEFORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"
    .annotation runtime Le/c/c/v/a;
        deserialize = false
    .end annotation
.end field

.field public static final DEVICEID_TAG:Ljava/lang/String; = "deviceId"

.field public static final DEVICEJOBSSTATISTICS_TAG:Ljava/lang/String; = "deviceJobStatistics"

.field public static final DEVICE_METHOD_RESPONSE_TAG:Ljava/lang/String; = "deviceMethodResponse"

.field public static final ENDTIME_TAG:Ljava/lang/String; = "endTime"

.field public static final END_TIME_UTC_TAG:Ljava/lang/String; = "endTimeUtc"

.field public static final ERROR_TAG:Ljava/lang/String; = "error"

.field public static final FAILUREREASON_TAG:Ljava/lang/String; = "failureReason"

.field public static final JOBID_TAG:Ljava/lang/String; = "jobId"

.field public static final JOB_TYPE_TAG:Ljava/lang/String; = "jobType"

.field public static final LAST_UPDATED_TIME_UTC_TAG:Ljava/lang/String; = "lastUpdatedDateTimeUtc"

.field public static final MAXEXECUTIONTIMEINSECONDS_TAG:Ljava/lang/String; = "maxExecutionTimeInSeconds"

.field public static final OUTCOME_TAG:Ljava/lang/String; = "outcome"

.field public static final PARENTJOBID_TAG:Ljava/lang/String; = "parentJobId"

.field public static final QUERYCONDITION_TAG:Ljava/lang/String; = "queryCondition"

.field public static final STARTTIME_TAG:Ljava/lang/String; = "startTime"

.field public static final START_TIME_UTC_TAG:Ljava/lang/String; = "startTimeUtc"

.field public static final STATUSMESSAGE_TAG:Ljava/lang/String; = "statusMessage"

.field public static final STATUS_TAG:Ljava/lang/String; = "status"

.field public static final TIMEZONE:Ljava/lang/String; = "UTC"
    .annotation runtime Le/c/c/v/a;
        deserialize = false
    .end annotation
.end field

.field public static final TYPE_TAG:Ljava/lang/String; = "type"

.field public static final UPDATETWIN_TAG:Ljava/lang/String; = "updateTwin"


# instance fields
.field public cloudToDeviceMethod:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;
    .annotation runtime Le/c/c/v/c;
        value = "cloudToDeviceMethod"
    .end annotation
.end field

.field public createdTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "createdTime"
    .end annotation
.end field

.field public createdTimeDate:Ljava/util/Date;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
    .end annotation
.end field

.field public createdTimeUTC:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "createdDateTimeUtc"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "deviceId"
    .end annotation
.end field

.field public deviceJobStatistics:Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;
    .annotation runtime Le/c/c/v/c;
        value = "deviceJobStatistics"
    .end annotation
.end field

.field public endTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "endTime"
    .end annotation
.end field

.field public endTimeDate:Ljava/util/Date;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
    .end annotation
.end field

.field public endTimeUTC:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "endTimeUtc"
    .end annotation
.end field

.field public error:Lcom/microsoft/azure/sdk/iot/deps/serializer/JobQueryResponseError;
    .annotation runtime Le/c/c/v/c;
        value = "error"
    .end annotation
.end field

.field public failureReason:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "failureReason"
    .end annotation
.end field

.field public jobId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "jobId"
    .end annotation
.end field

.field public jobType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "jobType"
    .end annotation
.end field

.field public jobsStatus:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "status"
    .end annotation
.end field

.field public lastUpdatedTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "lastUpdatedDateTimeUtc"
    .end annotation
.end field

.field public lastUpdatedTimeDate:Ljava/util/Date;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation
.end field

.field public maxExecutionTimeInSeconds:Ljava/lang/Long;
    .annotation runtime Le/c/c/v/c;
        value = "maxExecutionTimeInSeconds"
    .end annotation
.end field

.field public methodResponse:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

.field public outcome:Le/c/c/j;
    .annotation runtime Le/c/c/v/c;
        value = "outcome"
    .end annotation
.end field

.field public parentJobId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "parentJobId"
    .end annotation
.end field

.field public queryCondition:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "queryCondition"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "startTime"
    .end annotation
.end field

.field public startTimeDate:Ljava/util/Date;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
    .end annotation
.end field

.field public startTimeUTC:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "startTimeUtc"
    .end annotation
.end field

.field public statusMessage:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "statusMessage"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "type"
    .end annotation
.end field

.field public updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
    .annotation runtime Le/c/c/v/c;
        value = "updateTwin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->cloudToDeviceMethod:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->outcome:Le/c/c/j;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->failureReason:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->statusMessage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->deviceJobStatistics:Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->deviceId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->parentJobId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->error:Lcom/microsoft/azure/sdk/iot/deps/serializer/JobQueryResponseError;

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;
    .locals 7

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 3
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    if-eqz p0, :cond_1a

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;

    .line 9
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobId:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 10
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobType:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 11
    :cond_1
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->type:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobType:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Json contains both type and jobType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobsStatus:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 14
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->type:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 15
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobType:Ljava/lang/String;

    iput-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->type:Ljava/lang/String;

    .line 16
    :cond_4
    const-class v2, Ljava/util/Map;

    .line 17
    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 18
    invoke-static {v2}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/Map;

    const-string v2, "updateTwin"

    .line 20
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->createFromTwinJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    :cond_5
    const-string v2, "cloudToDeviceMethod"

    .line 22
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    iget-object v3, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->cloudToDeviceMethod:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->fromJson(Ljava/lang/String;)V

    :cond_6
    const-string v2, "outcome"

    .line 24
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 25
    iget-object v3, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->outcome:Le/c/c/j;

    const-class v5, Ljava/util/Map;

    if-nez v3, :cond_7

    move-object v3, v4

    goto :goto_1

    .line 26
    :cond_7
    new-instance v6, Le/c/c/w/z/a;

    invoke-direct {v6, v3}, Le/c/c/w/z/a;-><init>(Le/c/c/j;)V

    invoke-virtual {v0, v6, v5}, Lcom/google/gson/Gson;->a(Le/c/c/y/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    :goto_1
    invoke-static {v5}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Map;

    const-string v5, "deviceMethodResponse"

    .line 29
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 30
    new-instance p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;-><init>()V

    .line 31
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->fromJson(Ljava/lang/String;)V

    .line 33
    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->methodResponse:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    goto :goto_2

    .line 34
    :cond_8
    new-instance v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    invoke-direct {v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;-><init>()V

    .line 35
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->fromJson(Ljava/lang/String;)V

    .line 36
    iput-object v3, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->methodResponse:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    .line 37
    :cond_9
    :goto_2
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTime:Ljava/lang/String;

    if-eqz p0, :cond_b

    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeUTC:Ljava/lang/String;

    if-nez p0, :cond_a

    goto :goto_3

    .line 38
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both createdTime and createdTimeUTC cannot be sent at the same time"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_b
    :goto_3
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTime:Ljava/lang/String;

    if-eqz p0, :cond_c

    .line 40
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 41
    :catch_0
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeDate:Ljava/util/Date;

    goto :goto_4

    .line 42
    :cond_c
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeUTC:Ljava/lang/String;

    if-eqz p0, :cond_d

    .line 43
    :try_start_1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeDate:Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 44
    :catch_1
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeDate:Ljava/util/Date;

    .line 45
    :cond_d
    :goto_4
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTime:Ljava/lang/String;

    if-eqz p0, :cond_f

    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeUTC:Ljava/lang/String;

    if-nez p0, :cond_e

    goto :goto_5

    .line 46
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both startTime and startTimeUTC cannot be sent at the same time"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_f
    :goto_5
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTime:Ljava/lang/String;

    if-eqz p0, :cond_10

    .line 48
    :try_start_2
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeDate:Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 49
    :catch_2
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeDate:Ljava/util/Date;

    goto :goto_6

    .line 50
    :cond_10
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeUTC:Ljava/lang/String;

    if-eqz p0, :cond_11

    .line 51
    :try_start_3
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeDate:Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 52
    :catch_3
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeDate:Ljava/util/Date;

    .line 53
    :cond_11
    :goto_6
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTime:Ljava/lang/String;

    if-eqz p0, :cond_13

    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeUTC:Ljava/lang/String;

    if-nez p0, :cond_12

    goto :goto_7

    .line 54
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both endTime and endTimeUTC cannot be sent at the same time"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_13
    :goto_7
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTime:Ljava/lang/String;

    if-eqz p0, :cond_14

    .line 56
    :try_start_4
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeDate:Ljava/util/Date;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 57
    :catch_4
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeDate:Ljava/util/Date;

    goto :goto_8

    .line 58
    :cond_14
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeUTC:Ljava/lang/String;

    if-eqz p0, :cond_15

    .line 59
    :try_start_5
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeDate:Ljava/util/Date;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 60
    :catch_5
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeDate:Ljava/util/Date;

    .line 61
    :cond_15
    :goto_8
    iget-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->lastUpdatedTime:Ljava/lang/String;

    if-eqz p0, :cond_16

    .line 62
    :try_start_6
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->lastUpdatedTimeDate:Ljava/util/Date;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    .line 63
    :catch_6
    iput-object v4, v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->lastUpdatedTimeDate:Ljava/util/Date;

    :cond_16
    :goto_9
    return-object v1

    .line 64
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Json do not contains status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Json do not contains type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Json do not contains jobId"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Json is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCloudToDeviceMethod()Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->cloudToDeviceMethod:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    return-object v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->createdTimeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->endTimeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getError()Lcom/microsoft/azure/sdk/iot/deps/serializer/JobQueryResponseError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->error:Lcom/microsoft/azure/sdk/iot/deps/serializer/JobQueryResponseError;

    return-object v0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getJobId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobId:Ljava/lang/String;

    return-object v0
.end method

.method public getJobStatistics()Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->deviceJobStatistics:Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;

    return-object v0
.end method

.method public getJobsStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->jobsStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedTimeDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->lastUpdatedTimeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxExecutionTimeInSeconds()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->maxExecutionTimeInSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getOutcome()Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->methodResponse:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    return-object v0
.end method

.method public getParentJobId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->parentJobId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryCondition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->queryCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->startTimeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTwin()Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getDesiredProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getReportedProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getTags()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->updateTwin(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUpdateTwinState()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsResponseParser;->updateTwin:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    return-object v0
.end method
