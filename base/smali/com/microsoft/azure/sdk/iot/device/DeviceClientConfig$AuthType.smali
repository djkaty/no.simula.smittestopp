.class public final enum Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

.field public static final enum SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

.field public static final enum X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v1, 0x0

    const-string v2, "X509_CERTIFICATE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v2, 0x1

    const-string v3, "SAS_TOKEN"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    .line 3
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    return-object v0
.end method
