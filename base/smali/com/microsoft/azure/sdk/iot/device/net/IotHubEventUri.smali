.class public final Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EVENT_PATH:Ljava/lang/String; = "/messages/events"


# instance fields
.field public final uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    const-string v1, "/messages/events"

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getHostname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
