.class public Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceOperationTimeoutException;
.super Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
