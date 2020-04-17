.class public final Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;
.super Lcom/microsoft/azure/sdk/iot/device/Message;
.source "SourceFile"


# instance fields
.field public status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;


# direct methods
.method public constructor <init>([BLcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;-><init>([B)V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null status"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-object v0
.end method
