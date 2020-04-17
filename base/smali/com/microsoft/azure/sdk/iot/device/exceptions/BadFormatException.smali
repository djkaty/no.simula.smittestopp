.class public Lcom/microsoft/azure/sdk/iot/device/exceptions/BadFormatException;
.super Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getStatusCode()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-object v0
.end method
