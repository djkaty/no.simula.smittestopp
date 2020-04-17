.class public final Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABANDON_PATH_FORMAT:Ljava/lang/String; = "/messages/devicebound/%s/abandon"


# instance fields
.field public final uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "/messages/devicebound/%s/abandon"

    .line 2
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
