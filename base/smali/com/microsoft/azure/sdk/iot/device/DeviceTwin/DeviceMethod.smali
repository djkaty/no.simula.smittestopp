.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;,
        Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;
    }
.end annotation


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public final DEVICE_METHOD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

.field public config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

.field public deviceMethodCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;

.field public deviceMethodCallbackContext:Ljava/lang/Object;

.field public deviceMethodStatusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

.field public deviceMethodStatusCallbackContext:Ljava/lang/Object;

.field public isSubscribed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/ObjectLock;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->DEVICE_METHOD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->isSubscribed:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodStatusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    .line 7
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodStatusCallbackContext:Ljava/lang/Object;

    .line 8
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$1;)V

    invoke-virtual {p2, p1, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setDeviceMethodsMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status call back cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Client or config cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/ObjectLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->DEVICE_METHOD_LOCK:Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    return-object p0
.end method

.method public static synthetic access$200()Lk/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->log:Lk/f/b;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodStatusCallbackContext:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodStatusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->isSubscribed:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->isSubscribed:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodCallbackContext:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceIO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-object p0
.end method


# virtual methods
.method public subscribeToDeviceMethod(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodCallback:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceMethodCallbackContext:Ljava/lang/Object;

    .line 3
    iget-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->isSubscribed:Z

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    const/4 p2, 0x0

    new-array p2, p2, [B

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {p1, p2, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 5
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 6
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionDeviceId(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$1;)V

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
