.class public final Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final THREAD_NAME:Ljava/lang/String; = "azure-iot-sdk-ReconnectionTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyDisconnectAsync(Ljava/lang/Throwable;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p0, "azure-iot-sdk-ReconnectionTask:"

    invoke-static {p0, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
