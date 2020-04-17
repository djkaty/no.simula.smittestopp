.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONNECTION_STATE_TAG:Ljava/lang/String; = "connectionState"

.field public static final CONNECTION_STATE_UPDATED_TIME_TAG:Ljava/lang/String; = "connectionStateUpdatedTime"

.field public static final DEVICE_ID_TAG:Ljava/lang/String; = "deviceId"

.field public static final ETAG_TAG:Ljava/lang/String; = "etag"

.field public static final GENERATION_ID_TAG:Ljava/lang/String; = "generationId"

.field public static final LAST_ACTIVITY_TIME_TAG:Ljava/lang/String; = "lastActivityTime"

.field public static final STATUS_REASON_TAG:Ljava/lang/String; = "statusReason"

.field public static final STATUS_TAG:Ljava/lang/String; = "status"

.field public static final STATUS_UPDATED_TIME_TAG:Ljava/lang/String; = "statusUpdatedTime"

.field public static final VERSION_TAG:Ljava/lang/String; = "version"


# instance fields
.field public connectionState:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
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

.field public status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;
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
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->deviceId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->generationId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->eTag:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->version:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusReason:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusUpdatedTime:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->connectionState:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->connectionStateUpdatedTime:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->lastActivityTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setDeviceId(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->validateDeviceManager(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->deviceId:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setStatus(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->validateDeviceManager(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;

    if-eqz p1, :cond_0

    return v1

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusReason:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusUpdatedTime:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;

    .line 8
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusReason:Ljava/lang/String;

    return v1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Change status without statusReason"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateDeviceManager(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceId bigger than 128 chars"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Change status without statusReason"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StatusReason bigger than 128 chars"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
