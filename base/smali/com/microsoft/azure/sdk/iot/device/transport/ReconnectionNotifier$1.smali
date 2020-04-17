.class public final Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier;->notifyDisconnectAsync(Ljava/lang/Throwable;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$connectionId:Ljava/lang/String;

.field public final synthetic val$connectionLossCause:Ljava/lang/Throwable;

.field public final synthetic val$listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;->val$listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;->val$connectionLossCause:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;->val$connectionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;->val$listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;->val$connectionLossCause:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier$1;->val$connectionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onConnectionLost(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
