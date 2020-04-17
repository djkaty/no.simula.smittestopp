.class public Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLIENT_VERSION:Ljava/lang/String; = "1.20.2"

.field public static IOTHUB_API_VERSION:Ljava/lang/String; = "2018-06-30"

.field public static final JAVA_DEVICE_CLIENT_IDENTIFIER:Ljava/lang/String; = "com.microsoft.azure.sdk.iot.iot-device-client"

.field public static JAVA_RUNTIME:Ljava/lang/String;

.field public static OPERATING_SYSTEM:Ljava/lang/String;

.field public static PROCESSOR_ARCHITECTURE:Ljava/lang/String;

.field public static final USER_AGENT_STRING:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "java.version"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->JAVA_RUNTIME:Ljava/lang/String;

    const-string v0, "java.runtime.name"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Android"

    goto :goto_0

    :cond_0
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->OPERATING_SYSTEM:Ljava/lang/String;

    const-string v0, "os.arch"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->PROCESSOR_ARCHITECTURE:Ljava/lang/String;

    const-string v0, "com.microsoft.azure.sdk.iot.iot-device-client/1.20.2 ("

    .line 4
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->JAVA_RUNTIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->OPERATING_SYSTEM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->PROCESSOR_ARCHITECTURE:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->USER_AGENT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwTransportExceptionWithIotHubServiceType(Ljava/lang/Exception;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setIotHubService(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    .line 6
    throw v0
.end method

.method public static throwTransportExceptionWithIotHubServiceType(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setIotHubService(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    .line 3
    throw v0
.end method
