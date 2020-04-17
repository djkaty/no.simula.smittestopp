.class public final enum Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/DeviceIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IotHubClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

.field public static final enum CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

.field public static final enum OPEN:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    const/4 v1, 0x0

    const-string v2, "OPEN"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->OPEN:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    .line 2
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->OPEN:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    return-object v0
.end method
