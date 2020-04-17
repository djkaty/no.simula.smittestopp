.class public synthetic Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceClientConfig$AuthType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->values()[Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceClientConfig$AuthType:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceClientConfig$AuthType:[I

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
