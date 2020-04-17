.class public final enum Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/TransportClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

.field public static final enum CLOSED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

.field public static final enum OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    const/4 v1, 0x0

    const-string v2, "CLOSED"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    const/4 v2, 0x1

    const-string v3, "OPENED"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    .line 3
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    return-object v0
.end method
