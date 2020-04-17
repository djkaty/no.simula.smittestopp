.class public Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;,
        Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;
    }
.end annotation


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public final DEVICE_TWIN_LOCK:Ljava/lang/Object;

.field public config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

.field public deviceTwinGenericPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public deviceTwinGenericPropertyChangeCallbackContext:Ljava/lang/Object;

.field public deviceTwinGenericTwinPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

.field public deviceTwinStatusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

.field public deviceTwinStatusCallbackContext:Ljava/lang/Object;

.field public isSubscribed:Z

.field public onDesiredPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public onDesiredTwinPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public requestId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->isSubscribed:Z

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->DEVICE_TWIN_LOCK:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinInternal(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericTwinPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->isSubscribed:Z

    .line 13
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->DEVICE_TWIN_LOCK:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinInternal(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericTwinPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

    .line 16
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;

    return-void
.end method

.method private OnDesiredPropertyChanged(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->DEVICE_TWIN_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->getProperty(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Ljava/lang/String;Z)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    move-result-object v2

    .line 5
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->reportPropertyCallback(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->reportDeviceTwinGenericPropertyCallback(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;)Z

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private OnReportedPropertyChanged(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->DEVICE_TWIN_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->getProperty(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Ljava/lang/String;Z)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericTwinPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericTwinPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallbackContext:Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;->TwinPropertyCallBack(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->DEVICE_TWIN_LOCK:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinStatusCallbackContext:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinStatusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    return-object p0
.end method

.method public static synthetic access$300()Lk/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->log:Lk/f/b;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->OnDesiredPropertyChanged(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->OnReportedPropertyChanged(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-void
.end method

.method public static synthetic access$602(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->isSubscribed:Z

    return p1
.end method

.method private checkSubscription()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->isSubscribed:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    const/4 v1, 0x0

    new-array v1, v1, [B

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$1;)V

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private deviceTwinInternal(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 3
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setDeviceTwinMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->requestId:I

    .line 5
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinStatusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    .line 6
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinStatusCallbackContext:Ljava/lang/Object;

    .line 7
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallbackContext:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Client or config cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getProperty(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Ljava/lang/String;Z)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;
    .locals 7

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->getVersionFinal()Ljava/lang/Integer;

    move-result-object v3

    .line 3
    invoke-virtual {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->getTwinMetadataFinal(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->getLastUpdatedVersion()Ljava/lang/Integer;

    move-result-object p1

    move-object v6, p1

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    move-object v6, v5

    .line 6
    :goto_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;ZLjava/util/Date;Ljava/lang/Integer;)V

    return-object p1
.end method

.method private reportDeviceTwinGenericPropertyCallback(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, v2, p1, v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;->PropertyCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericTwinPropertyChangeCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceTwinGenericPropertyChangeCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;->TwinPropertyCallBack(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private reportPropertyCallback(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;->PropertyCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredTwinPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredTwinPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;->TwinPropertyCallBack(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method public getDeviceTwin()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->checkSubscription()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    const/4 v1, 0x0

    new-array v1, v1, [B

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    iget v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->requestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->requestId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setRequestId(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_GET_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$1;)V

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public subscribeDesiredPropertiesNotification(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->checkSubscription()V

    return-void
.end method

.method public subscribeDesiredPropertiesTwinPropertyNotification(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredTwinPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredTwinPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->onDesiredTwinPropertyChangeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->checkSubscription()V

    return-void
.end method

.method public declared-synchronized updateReportedProperties(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->updateReportedProperties(Ljava/util/Set;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateReportedProperties(Ljava/util/Set;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 3
    :try_start_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    .line 5
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->putFinal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate keys found in reported properties: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElement()Le/c/c/j;

    move-result-object p1

    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionDeviceId(Ljava/lang/String;)V

    .line 12
    iget p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->requestId:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->requestId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setRequestId(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setVersion(Ljava/lang/String;)V

    .line 14
    :cond_3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 15
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$1;)V

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reported properties cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
