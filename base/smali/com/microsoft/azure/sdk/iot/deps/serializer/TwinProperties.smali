.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DESIRED_TAG:Ljava/lang/String; = "desired"

.field public static final REPORTED_TAG:Ljava/lang/String; = "reported"


# instance fields
.field public desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

.field public reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    return-void
.end method


# virtual methods
.method public clearDesired()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    return-void
.end method

.method public clearReported()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    return-void
.end method

.method public enableDesiredMetadata()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->enableMetadata()V

    return-void
.end method

.method public enableReportedMetadata()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->enableMetadata()V

    return-void
.end method

.method public getDesiredPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getReportedPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReportedVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public resetDesired(Ljava/util/Map;)Le/c/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/c/c/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method public resetReported(Ljava/util/Map;)Le/c/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/c/c/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->toJsonElement()Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 3

    .line 1
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "desired"

    .line 3
    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "reported"

    .line 5
    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;",
            "Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "desired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reported"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Property"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public updateDesired(Ljava/util/Map;)Le/c/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/c/c/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method public updateDesired(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    return-void
.end method

.method public updateReported(Ljava/util/Map;)Le/c/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/c/c/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method public updateReported(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->update(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    return-void
.end method

.method public validate(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "desired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->validate(Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reported"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;->validate(Ljava/util/Map;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Property"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
