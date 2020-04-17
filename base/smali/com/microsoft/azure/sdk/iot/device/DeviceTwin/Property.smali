.class public Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isReported:Z

.field public lastUpdated:Ljava/util/Date;

.field public lastUpdatedVersion:Ljava/lang/Integer;

.field public property:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->property:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->version:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->isReported:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->property:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;ZLjava/util/Date;Ljava/lang/Integer;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->version:Ljava/lang/Integer;

    .line 10
    iput-boolean p4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->isReported:Z

    .line 11
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->lastUpdated:Ljava/util/Date;

    .line 12
    iput-object p6, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->lastUpdatedVersion:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getIsReported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->isReported:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->property:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getLastUpdatedVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->lastUpdatedVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->property:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->property:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
