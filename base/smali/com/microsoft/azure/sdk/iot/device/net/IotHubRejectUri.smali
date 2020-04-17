.class public final Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REJECT_PATH_FORMAT:Ljava/lang/String; = "/messages/devicebound/%s"

.field public static final REJECT_QUERY_PARAM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "?reject"

    const-string v2, "true"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->REJECT_QUERY_PARAM:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "/messages/devicebound/%s"

    .line 2
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance p3, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->REJECT_QUERY_PARAM:Ljava/util/Map;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->uri:Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
