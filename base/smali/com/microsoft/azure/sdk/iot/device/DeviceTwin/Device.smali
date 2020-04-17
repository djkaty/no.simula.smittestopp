.class public abstract Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public desiredProp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public reportedProp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->reportedProp:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->desiredProp:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->reportedProp:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->desiredProp:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getDesiredProp()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->desiredProp:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReportedProp()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->reportedProp:Ljava/util/HashSet;

    return-object v0
.end method

.method public setDesiredPropertyCallback(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->desiredProp:Ljava/util/HashMap;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-direct {v1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "desired property cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReportedProp(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;)V
    .locals 5

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->reportedProp:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;

    .line 2
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->reportedProp:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Device;->reportedProp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reported property cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
