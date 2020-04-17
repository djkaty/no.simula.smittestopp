.class public abstract Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "SourceFile"


# static fields
.field public static final APP_LAUNCH_TIMESTAMP:Ljava/lang/String; = "appLaunchTimestamp"

.field public static final ARCHITECTURE:Ljava/lang/String; = "architecture"

.field public static final ERROR_THREAD_ID:Ljava/lang/String; = "errorThreadId"

.field public static final ERROR_THREAD_NAME:Ljava/lang/String; = "errorThreadName"

.field public static final FATAL:Ljava/lang/String; = "fatal"

.field public static final PARENT_PROCESS_ID:Ljava/lang/String; = "parentProcessId"

.field public static final PARENT_PROCESS_NAME:Ljava/lang/String; = "parentProcessName"

.field public static final PROCESS_ID:Ljava/lang/String; = "processId"

.field public static final PROCESS_NAME:Ljava/lang/String; = "processName"


# instance fields
.field public appLaunchTimestamp:Ljava/util/Date;

.field public architecture:Ljava/lang/String;

.field public errorThreadId:Ljava/lang/Long;

.field public errorThreadName:Ljava/lang/String;

.field public fatal:Ljava/lang/Boolean;

.field public id:Ljava/util/UUID;

.field public parentProcessId:Ljava/lang/Integer;

.field public parentProcessName:Ljava/lang/String;

.field public processId:Ljava/lang/Integer;

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_a

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;

    .line 4
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 6
    :cond_6
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 7
    :cond_8
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 8
    :cond_a
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_4
    return v1

    .line 9
    :cond_c
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_d
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    if-eqz v2, :cond_e

    :goto_5
    return v1

    .line 10
    :cond_e
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    :cond_f
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    if-eqz v2, :cond_10

    :goto_6
    return v1

    .line 11
    :cond_10
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_7

    :cond_11
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    :goto_7
    return v1

    .line 12
    :cond_12
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_8

    :cond_13
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    if-eqz v2, :cond_14

    :goto_8
    return v1

    .line 13
    :cond_14
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    :cond_15
    if-nez p1, :cond_16

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_17
    :goto_a
    return v1
.end method

.method public getAppLaunchTimestamp()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorThreadId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    return-object v0
.end method

.method public getErrorThreadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getFatal()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public getParentProcessId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParentProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setId(Ljava/util/UUID;)V

    const-string v0, "processId"

    .line 3
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setProcessId(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    const-string v1, "processName"

    .line 4
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setProcessName(Ljava/lang/String;)V

    const-string v1, "parentProcessId"

    .line 5
    invoke-static {p1, v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setParentProcessId(Ljava/lang/Integer;)V

    const-string v1, "parentProcessName"

    .line 6
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setParentProcessName(Ljava/lang/String;)V

    const-string v1, "errorThreadId"

    .line 7
    invoke-static {p1, v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setErrorThreadId(Ljava/lang/Long;)V

    const-string v1, "errorThreadName"

    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setErrorThreadName(Ljava/lang/String;)V

    const-string v1, "fatal"

    .line 9
    invoke-static {p1, v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setFatal(Ljava/lang/Boolean;)V

    const-string v1, "appLaunchTimestamp"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setAppLaunchTimestamp(Ljava/util/Date;)V

    const-string v1, "architecture"

    .line 11
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setArchitecture(Ljava/lang/String;)V

    return-void
.end method

.method public setAppLaunchTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    return-void
.end method

.method public setErrorThreadId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    return-void
.end method

.method public setErrorThreadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    return-void
.end method

.method public setFatal(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    return-void
.end method

.method public setParentProcessId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    return-void
.end method

.method public setParentProcessName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    return-void
.end method

.method public setProcessId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getId()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getProcessId()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "processId"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processName"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getParentProcessId()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "parentProcessId"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getParentProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parentProcessName"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getErrorThreadId()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "errorThreadId"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getErrorThreadName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorThreadName"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getFatal()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fatal"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getAppLaunchTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appLaunchTimestamp"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    const-string v1, "architecture"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
