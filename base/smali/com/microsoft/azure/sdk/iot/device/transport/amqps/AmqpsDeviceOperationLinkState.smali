.class public final enum Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

.field public static final enum CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

.field public static final enum OPENED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

.field public static final enum OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

.field public static final enum UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    const/4 v3, 0x2

    const-string v4, "OPENING"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    const/4 v4, 0x3

    const-string v5, "OPENED"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 5
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    return-object v0
.end method
