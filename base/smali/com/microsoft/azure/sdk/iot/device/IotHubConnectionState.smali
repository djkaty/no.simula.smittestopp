.class public final enum Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

.field public static final enum CONNECTION_DROP:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

.field public static final enum CONNECTION_SUCCESS:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

.field public static final enum SAS_TOKEN_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    const/4 v1, 0x0

    const-string v2, "CONNECTION_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->CONNECTION_SUCCESS:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    const/4 v2, 0x1

    const-string v3, "CONNECTION_DROP"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->CONNECTION_DROP:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    const/4 v3, 0x2

    const-string v4, "SAS_TOKEN_EXPIRED"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->SAS_TOKEN_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    .line 4
    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->CONNECTION_SUCCESS:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->CONNECTION_DROP:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    return-object v0
.end method
