.class public Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
.super Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;
    }
.end annotation


# instance fields
.field public iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

.field public isRetryable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->NOT_APPLICABLE:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->NOT_APPLICABLE:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->NOT_APPLICABLE:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    .line 12
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->NOT_APPLICABLE:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-void
.end method


# virtual methods
.method public getIotHubService()Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-object v0
.end method

.method public isRetryable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    return v0
.end method

.method public setIotHubService(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->iotHubService:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    return-void
.end method

.method public setRetryable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    return-void
.end method
