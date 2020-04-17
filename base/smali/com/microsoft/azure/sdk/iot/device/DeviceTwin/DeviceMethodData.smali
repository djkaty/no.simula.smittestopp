.class public Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public responseMessage:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->status:I

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->responseMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->status:I

    return v0
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->responseMessage:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->status:I

    return-void
.end method
