.class public Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DESIRED_PROPERTIES_TAG:Ljava/lang/String; = "desired"

.field public static final REPORTED_PROPERTIES_TAG:Ljava/lang/String; = "reported"


# instance fields
.field public desired:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "desired"
    .end annotation
.end field

.field public reported:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "reported"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Desired property cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->createFromRawCollection(Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->createFromRawCollection(Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    :cond_3
    return-void
.end method


# virtual methods
.method public getDesired()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-object v0
.end method

.method public getReported()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-object v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 3

    .line 1
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "desired"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "reported"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_1
    return-object v0
.end method

.method public toJsonElementWithMetadata()Le/c/c/j;
    .locals 3

    .line 1
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->desired:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElementWithMetadata()Le/c/c/j;

    move-result-object v1

    const-string v2, "desired"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->reported:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElementWithMetadata()Le/c/c/j;

    move-result-object v1

    const-string v2, "reported"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->toJsonElementWithMetadata()Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
