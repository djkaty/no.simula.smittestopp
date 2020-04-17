.class public Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
.super Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;
.source "SourceFile"


# static fields
.field public static final CONFIGURATION_TAG:Ljava/lang/String; = "configurations"

.field public static final PROPERTIES_TAG:Ljava/lang/String; = "properties"

.field public static final TAGS_TAG:Ljava/lang/String; = "tags"


# instance fields
.field public configurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "configurations"
    .end annotation
.end field

.field public properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "properties"
    .end annotation
.end field

.field public tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "tags"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->createFromRawCollection(Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    .line 3
    :cond_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    invoke-direct {p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    :cond_2
    return-void
.end method

.method public static createFromDesiredPropertyJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->b()Le/c/c/e;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    .line 9
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-object v0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON with result is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromPropertiesJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->b()Le/c/c/e;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    .line 9
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->getDesired()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->getReported()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-object v0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON with result is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromReportedPropertyJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->b()Le/c/c/e;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    .line 9
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-object v0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON with result is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromTwinJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->b()Le/c/c/e;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    .line 9
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getTags()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->getDesired()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->getReported()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    :cond_0
    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON with result is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->configurations:Ljava/util/Map;

    return-object v0
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/RegisterManager;->connectionState:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinConnectionState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->getDesired()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v0

    return-object v0
.end method

.method public getReportedProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->getReported()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    return-object v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 4

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->toJsonElement()Le/c/c/j;

    move-result-object v2

    const-string v3, "properties"

    invoke-virtual {v1, v3, v2}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->b()Le/c/c/e;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->m:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElementWithMetadata()Le/c/c/j;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->properties:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinProperties;->toJsonElementWithMetadata()Le/c/c/j;

    move-result-object v1

    const-string v2, "properties"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 10
    :cond_1
    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
