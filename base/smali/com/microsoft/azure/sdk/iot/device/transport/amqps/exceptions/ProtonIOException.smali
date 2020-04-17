.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/ProtonIOException;
.super Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;
.source "SourceFile"


# static fields
.field public static final errorCode:Ljava/lang/String; = "proton:io"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable:Z

    return-void
.end method
