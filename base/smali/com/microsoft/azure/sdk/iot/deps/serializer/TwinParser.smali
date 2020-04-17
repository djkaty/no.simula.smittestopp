.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DESIRED_TAG:Ljava/lang/String; = "desired"

.field public static final MAX_MAP_LEVEL:I = 0x5

.field public static final PROPERTIES_TAG:Ljava/lang/String; = "properties"

.field public static final REPORTED_TAG:Ljava/lang/String; = "reported"

.field public static final TAGS_TAG:Ljava/lang/String; = "tags"

.field public static onTagsCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;


# instance fields
.field public manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

.field public onDesiredCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

.field public onReportedCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

.field public properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

.field public tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onDesiredCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onReportedCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->setDesiredCallback(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->setDesiredCallback(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->setReportedCallback(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    return-void
.end method

.method private innerUpdateDesiredProperty(Ljava/util/Map;)Le/c/c/j;
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

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->updateDesired(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private innerUpdateReportedProperty(Ljava/util/Map;)Le/c/c/j;
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

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->updateReported(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private innerUpdateTags(Ljava/util/Map;)Le/c/c/j;
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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;->update(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null tags map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Update not enabled Tags"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateJson(Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    .line 2
    iget-object v1, v0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    .line 3
    invoke-virtual {v1}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/google/gson/internal/Excluder;->z:Z

    .line 5
    iput-object v1, v0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    .line 6
    iput-boolean v2, v0, Le/c/c/e;->l:Z

    .line 7
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 8
    const-class v1, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_8

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "properties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->validate(Ljava/util/Map;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "desired"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "reported"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "tags"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;->validate(Ljava/util/Map;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 19
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->validate(Ljava/util/Map;)V

    goto :goto_3

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Entry"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    goto :goto_4

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Json do not contains twin information"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void

    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed Json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;II)V

    :cond_0
    return-void
.end method

.method private validateMap(Ljava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed Json: illegal value type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 6
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    if-gt p2, p3, :cond_3

    .line 7
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;II)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed Json: exceed 5 levels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method


# virtual methods
.method public enableMetadata()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->enableDesiredMetadata()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->enableReportedMetadata()V

    return-void
.end method

.method public enableTags()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    :cond_0
    return-void
.end method

.method public getConnectionState()Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->connectionState:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    return-object v0
.end method

.method public getConnectionStateUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->connectionStateUpdatedTime:Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->getDesiredPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredPropertyVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->getDesiredVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->generationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->lastActivityTime:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->getReportedPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReportedPropertyVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->getReportedVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->status:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;

    return-object v0
.end method

.method public getStatusReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->statusUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsMap()Ljava/util/Map;
    .locals 2
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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Update not enabled Tags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public resetDesiredProperty(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->resetDesired(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "{}"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null property map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetReportedProperty(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->resetReported(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "{}"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null property map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetTags(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    .line 4
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;->update(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "{}"

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null tags map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Update not enabled Tags"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDesiredCallback(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onDesiredCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->setDeviceId(Ljava/lang/String;)Z

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iput-object p1, v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setReportedCallback(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onReportedCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    return-void
.end method

.method public setTagsCallback(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onTagsCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->toJsonElement()Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 3

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 3
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "properties"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    return-object v0
.end method

.method public updateDesiredProperty(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->innerUpdateDesiredProperty(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null desired property map."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateDesiredProperty(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onDesiredCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->updateDesired(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateDeviceManager(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->validateDeviceManager(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-virtual {v0, p2, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->setStatus(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinStatus;Ljava/lang/String;)Z

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-virtual {p3, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;->setDeviceId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateReportedProperty(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->innerUpdateReportedProperty(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null reported property map."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateReportedProperty(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onReportedCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->updateReported(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateTags(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->innerUpdateTags(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateTwin(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 4
    invoke-direct {p0, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateMap(Ljava/util/Map;)V

    .line 5
    new-instance v1, Le/c/c/e;

    invoke-direct {v1}, Le/c/c/e;-><init>()V

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Le/c/c/e;->l:Z

    .line 7
    invoke-virtual {v1}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    invoke-virtual {v1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-nez v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Update not enabled Tags"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null maps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->innerUpdateDesiredProperty(Ljava/util/Map;)Le/c/c/j;

    move-result-object p1

    const-string v2, "desired"

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {v0, v2, p1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_2

    .line 14
    :cond_4
    new-instance v3, Le/c/c/m;

    invoke-direct {v3}, Le/c/c/m;-><init>()V

    invoke-virtual {v0, v2, v3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 15
    :goto_2
    invoke-direct {p0, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->innerUpdateReportedProperty(Ljava/util/Map;)Le/c/c/j;

    move-result-object p2

    const-string v2, "reported"

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {v0, v2, p2}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_3

    .line 17
    :cond_5
    new-instance v3, Le/c/c/m;

    invoke-direct {v3}, Le/c/c/m;-><init>()V

    invoke-virtual {v0, v2, v3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 18
    :goto_3
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const-string v2, "tags"

    if-nez p3, :cond_6

    .line 19
    new-instance p3, Le/c/c/m;

    invoke-direct {p3}, Le/c/c/m;-><init>()V

    invoke-virtual {v1, v2, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_4

    .line 20
    :cond_6
    invoke-direct {p0, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->innerUpdateTags(Ljava/util/Map;)Le/c/c/j;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 21
    invoke-virtual {v1, v2, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_5

    .line 22
    :cond_7
    new-instance v4, Le/c/c/m;

    invoke-direct {v4}, Le/c/c/m;-><init>()V

    invoke-virtual {v1, v2, v4}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_5

    :cond_8
    :goto_4
    move-object p3, v3

    :goto_5
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    if-eqz p3, :cond_9

    goto :goto_6

    :cond_9
    return-object v3

    :cond_a
    :goto_6
    const-string p1, "properties"

    .line 23
    invoke-virtual {v1, p1, v0}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 24
    invoke-virtual {v1}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateTwin(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 25
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->validateJson(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    .line 28
    iget-object v1, v0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    .line 29
    invoke-virtual {v1}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v1

    const/4 v2, 0x0

    .line 30
    iput-boolean v2, v1, Lcom/google/gson/internal/Excluder;->z:Z

    .line 31
    iput-object v1, v0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    .line 32
    iput-boolean v2, v0, Le/c/c/e;->l:Z

    .line 33
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 34
    :try_start_0
    const-class v1, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map;

    .line 38
    const-class v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    .line 39
    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    invoke-static {v3}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->manager:Lcom/microsoft/azure/sdk/iot/deps/serializer/RegisterManagerParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "properties"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onDesiredCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onReportedCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    invoke-virtual {v2, v0, v3, v4}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->update(Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "desired"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "reported"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 46
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;

    if-eqz v2, :cond_3

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onTagsCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    invoke-virtual {v2, v0, v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinTags;->update(Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 49
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->properties:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onDesiredCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinParser;->onReportedCallback:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;

    invoke-virtual {p1, v1, v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperties;->update(Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinChangedCallback;)V

    goto :goto_3

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Entry"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed Json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    return-void

    .line 52
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
