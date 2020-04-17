.class public final enum Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IotHubService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

.field public static final enum FILE_UPLOAD:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

.field public static final enum METHODS:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

.field public static final enum NOT_APPLICABLE:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

.field public static final enum TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

.field public static final enum TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const/4 v1, 0x0

    const-string v2, "TWIN"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const/4 v2, 0x1

    const-string v3, "TELEMETRY"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const/4 v3, 0x2

    const-string v4, "METHODS"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->METHODS:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const/4 v4, 0x3

    const-string v5, "FILE_UPLOAD"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->FILE_UPLOAD:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const/4 v5, 0x4

    const-string v6, "NOT_APPLICABLE"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->NOT_APPLICABLE:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    .line 6
    sget-object v7, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->METHODS:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->FILE_UPLOAD:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-object v0
.end method
