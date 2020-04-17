.class public Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IOT_EDGE_NAME:Ljava/lang/String; = "iotEdge"


# instance fields
.field public iotEdge:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "iotEdge"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;->iotEdge:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public isIotEdge()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;->iotEdge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIotEdge(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/DeviceCapabilities;->iotEdge:Ljava/lang/Boolean;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iotEdge cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
