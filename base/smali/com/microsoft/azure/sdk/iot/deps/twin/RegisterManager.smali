.class public Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAPABILITIES_TAG:Ljava/lang/String; = "capabilities"

.field public static final CONNECTION_STATE_TAG:Ljava/lang/String; = "connectionState"

.field public static final CONNECTION_STATE_UPDATED_TIME_TAG:Ljava/lang/String; = "connectionStateUpdatedTime"

.field public static final DEVICE_ID_TAG:Ljava/lang/String; = "deviceId"

.field public static final ETAG_TAG:Ljava/lang/String; = "etag"

.field public static final GENERATION_ID_TAG:Ljava/lang/String; = "generationId"

.field public static final LAST_ACTIVITY_TIME_TAG:Ljava/lang/String; = "lastActivityTime"

.field public static final MODULE_ID_TAG:Ljava/lang/String; = "moduleId"

.field public static final STATUS_REASON_TAG:Ljava/lang/String; = "statusReason"

.field public static final STATUS_TAG:Ljava/lang/String; = "status"

.field public static final STATUS_UPDATED_TIME_TAG:Ljava/lang/String; = "statusUpdatedTime"

.field public static final VERSION_TAG:Ljava/lang/String; = "version"


# instance fields
.field public capabilities:Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "capabilities"
    .end annotation
.end field

.field public connectionState:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinConnectionState;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "connectionState"
    .end annotation
.end field

.field public connectionStateUpdatedTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
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

.field public lastActivityTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "lastActivityTime"
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

.field public status:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinStatus;
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

.field public statusUpdatedTime:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "statusUpdatedTime"
    .end annotation
.end field

.field public version:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->deviceId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->moduleId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->generationId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->eTag:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->version:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->status:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinStatus;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->statusReason:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->statusUpdatedTime:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->connectionState:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinConnectionState;

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->connectionStateUpdatedTime:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->lastActivityTime:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;

    return-void
.end method


# virtual methods
.method public getCapabilities()Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCapabilities(Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->capabilities:Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateId(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateId(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->moduleId:Ljava/lang/String;

    return-void
.end method
