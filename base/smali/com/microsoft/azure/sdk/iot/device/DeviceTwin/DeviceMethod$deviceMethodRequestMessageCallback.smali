.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "deviceMethodRequestMessageCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$300(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
