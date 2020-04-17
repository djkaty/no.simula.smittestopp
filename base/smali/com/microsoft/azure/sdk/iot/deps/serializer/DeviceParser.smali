.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHENTICATION_NAME:Ljava/lang/String; = "authentication"

.field public static final CAPABILITIES_NAME:Ljava/lang/String; = "capabilities"

.field public static final CLOUD_TO_MESSAGE_COUNT_NAME:Ljava/lang/String; = "cloudToDeviceMessageCount"

.field public static final CONNECTION_STATE_NAME:Ljava/lang/String; = "connectionState"

.field public static final CONNECTION_STATE_UPDATED_TIME_NAME:Ljava/lang/String; = "connectionStateUpdatedTime"

.field public static final DEVICE_ID_NAME:Ljava/lang/String; = "deviceId"

.field public static final E_TAG_NAME:Ljava/lang/String; = "etag"

.field public static final GENERATION_ID_NAME:Ljava/lang/String; = "generationId"

.field public static final LAST_ACTIVITY_TIME_NAME:Ljava/lang/String; = "lastActivityTime"

.field public static final MANAGED_BY:Ljava/lang/String; = "managedBy"

.field public static final MODULE_ID_NAME:Ljava/lang/String; = "moduleId"

.field public static final SCOPE_NAME:Ljava/lang/String; = "deviceScope"

.field public static final STATUS_NAME:Ljava/lang/String; = "status"

.field public static final STATUS_REASON:Ljava/lang/String; = "statusReason"

.field public static final STATUS_UPDATED_TIME_NAME:Ljava/lang/String; = "statusUpdatedTime"


# instance fields
.field public authenticationParser:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "authentication"
    .end annotation
.end field

.field public capabilities:Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "capabilities"
    .end annotation
.end field

.field public cloudToDeviceMessageCount:J
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "cloudToDeviceMessageCount"
    .end annotation
.end field

.field public connectionState:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "connectionState"
    .end annotation
.end field

.field public transient connectionStateUpdatedTime:Ljava/util/Date;

.field public connectionStateUpdatedTimeString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "connectionStateUpdatedTime"
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

.field public eTag:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "etag"
    .end annotation
.end field

.field public generationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "generationId"
    .end annotation
.end field

.field public transient gson:Lcom/google/gson/Gson;

.field public transient lastActivityTime:Ljava/util/Date;

.field public lastActivityTimeString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "lastActivityTime"
    .end annotation
.end field

.field public managedBy:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "managedBy"
    .end annotation
.end field

.field public moduleId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "moduleId"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "deviceScope"
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

.field public statusReason:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "statusReason"
    .end annotation
.end field

.field public transient statusUpdatedTime:Ljava/util/Date;

.field public statusUpdatedTimeString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "statusUpdatedTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->gson:Lcom/google/gson/Gson;

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->authenticationParser:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    if-eqz v0, :cond_3

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->authenticationParser:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    .line 13
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionState:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionState:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->deviceId:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->moduleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->moduleId:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusReason:Ljava/lang/String;

    .line 17
    iget-wide v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->cloudToDeviceMessageCount:J

    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->cloudToDeviceMessageCount:J

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionState:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionState:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->generationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->generationId:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->eTag:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->status:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->managedBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->managedBy:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;

    .line 24
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->scope:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->scope:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTimeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTimeString:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTimeString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTime:Ljava/util/Date;

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTimeString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTimeString:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTimeString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTime:Ljava/util/Date;

    .line 31
    :cond_1
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTimeString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTimeString:Ljava/lang/String;

    .line 33
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTimeString:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTime:Ljava/util/Date;

    :cond_2
    return-void

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json must contain the field for authentication and its value may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json must contain the field for deviceId and its value may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthenticationParser()Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->authenticationParser:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    return-object v0
.end method

.method public getCapabilities()Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;

    return-object v0
.end method

.method public getCloudToDeviceMessageCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->cloudToDeviceMessageCount:J

    return-wide v0
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionState:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionStateUpdatedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->generationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTime:Ljava/util/Date;

    return-object v0
.end method

.method public getManagedBy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->managedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusUpdatedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTime:Ljava/util/Date;

    return-object v0
.end method

.method public geteTag()Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->eTag:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAuthenticationParser(Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->authenticationParser:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Authentication cannot not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCapabilities(Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;

    return-void
.end method

.method public setCloudToDeviceMessageCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->cloudToDeviceMessageCount:J

    return-void
.end method

.method public setConnectionState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionState:Ljava/lang/String;

    return-void
.end method

.method public setConnectionStateUpdatedTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTime:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTimeString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTimeString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->deviceId:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DeviceId cannot not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGenerationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->generationId:Ljava/lang/String;

    return-void
.end method

.method public setLastActivityTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTime:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTimeString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTimeString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setManagedBy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->managedBy:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->moduleId:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DeviceId cannot not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->scope:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->status:Ljava/lang/String;

    return-void
.end method

.method public setStatusReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusReason:Ljava/lang/String;

    return-void
.end method

.method public setStatusUpdatedTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTime:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTimeString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTimeString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public seteTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->eTag:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->statusUpdatedTimeString:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->connectionStateUpdatedTimeString:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTime:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->lastActivityTimeString:Ljava/lang/String;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
