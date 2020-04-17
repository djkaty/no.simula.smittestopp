.class public final enum Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

.field public static final enum ABANDON:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

.field public static final enum COMPLETE:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

.field public static final enum REJECT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    const/4 v1, 0x0

    const-string v2, "COMPLETE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    const/4 v2, 0x1

    const-string v3, "ABANDON"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    const/4 v3, 0x2

    const-string v4, "REJECT"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->REJECT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    .line 4
    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    return-object v0
.end method
