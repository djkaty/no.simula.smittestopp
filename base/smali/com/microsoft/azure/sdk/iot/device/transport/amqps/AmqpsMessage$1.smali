.class public synthetic Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->values()[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE:[I

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$1;->$SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE:[I

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->REJECT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    const/4 v2, 0x3

    aput v2, v1, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
