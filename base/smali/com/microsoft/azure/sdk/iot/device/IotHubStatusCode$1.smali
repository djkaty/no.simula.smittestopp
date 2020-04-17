.class public synthetic Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->values()[Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    const/16 v2, 0xd

    :try_start_2
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_CANCELLED_ONCLOSE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    const/16 v4, 0xc

    :try_start_3
    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v3, v5, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v5, v6, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v0, 0x6

    :try_start_5
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->UNAUTHORIZED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v0, v6, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v1, 0x7

    :try_start_6
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->TOO_MANY_DEVICES:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v1, v6, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v3, 0x8

    :try_start_7
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->HUB_OR_DEVICE_ID_NOT_FOUND:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v3, v6, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v5, 0x9

    :try_start_8
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->PRECONDITION_FAILED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v5, v6, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v0, 0xa

    :try_start_9
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->REQUEST_ENTITY_TOO_LARGE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v0, v6, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v1, 0xb

    :try_start_a
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->THROTTLED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v1, v6, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->INTERNAL_SERVER_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v4, v3, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->SERVER_BUSY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput v2, v3, v0
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode:[I

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
