.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;
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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIotEdge()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;->iotEdge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIotEdge(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/DeviceCapabilitiesParser;->iotEdge:Ljava/lang/Boolean;

    return-void
.end method
