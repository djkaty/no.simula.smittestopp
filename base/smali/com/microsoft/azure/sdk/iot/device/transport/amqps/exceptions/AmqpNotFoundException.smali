.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotFoundException;
.super Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;
.source "SourceFile"


# static fields
.field public static final errorCode:Ljava/lang/String; = "amqp:not-found"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
