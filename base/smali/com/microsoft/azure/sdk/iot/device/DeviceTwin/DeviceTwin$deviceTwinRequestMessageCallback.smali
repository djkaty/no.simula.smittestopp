.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "deviceTwinRequestMessageCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$000(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$200(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinRequestMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    .line 4
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
