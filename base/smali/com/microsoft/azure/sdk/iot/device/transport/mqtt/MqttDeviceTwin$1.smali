.class public synthetic Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->values()[Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_GET_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations:[I

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    const/4 v1, 0x2

    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations:[I

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    const/4 v1, 0x4

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
