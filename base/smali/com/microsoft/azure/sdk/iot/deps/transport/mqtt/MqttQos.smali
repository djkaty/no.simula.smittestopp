.class public final enum Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

.field public static final enum DELIVER_AT_LEAST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

.field public static final enum DELIVER_AT_MOST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

.field public static final enum DELIVER_EXACTLY_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

.field public static final enum DELIVER_FAILURE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

.field public static final enum DELIVER_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    const/4 v1, 0x0

    const-string v2, "DELIVER_AT_MOST_ONCE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_MOST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    const/4 v2, 0x1

    const-string v3, "DELIVER_AT_LEAST_ONCE"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_LEAST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    const/4 v3, 0x2

    const-string v4, "DELIVER_EXACTLY_ONCE"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_EXACTLY_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    const/4 v4, 0x3

    const-string v5, "DELIVER_FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_FAILURE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    const/4 v5, 0x4

    const-string v6, "DELIVER_UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 6
    sget-object v7, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_MOST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_LEAST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_EXACTLY_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_FAILURE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    return-object v0
.end method
