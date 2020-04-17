.class public Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final METADATA_TAG:Ljava/lang/String; = "$metadata"

.field public static final VERSION_TAG:Ljava/lang/String; = "$version"


# instance fields
.field public metadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->getVersionFinal()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->version:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->getTwinMetadataFinal()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    .line 12
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v3, v4}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    invoke-super {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-super {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_1
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->getTwinMetadataFinal(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->putAllFinal(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static addMetadata(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;",
            "Ljava/util/Map<",
            "+",
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

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "$lastUpdated"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, "$lastUpdatedVersion"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->tryExtractFromMap(Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    instance-of v3, v4, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v3, :cond_0

    .line 11
    check-cast v4, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v4, v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->addMetadata(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Ljava/util/Map;)V

    goto :goto_0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Twin metadata is inconsistent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-nez v0, :cond_6

    .line 13
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 14
    :cond_6
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-direct {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    :cond_7
    return-void
.end method

.method public static createFromRawCollection(Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "$version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->version:Ljava/lang/Integer;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version is not a number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "$metadata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->putFinal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 10
    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->addMetadata(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;Ljava/util/Map;)V

    :cond_4
    return-object v0
.end method

.method private fillJsonMetadata(Le/c/c/m;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->dateTimeUtcToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    const-string v1, "$lastUpdated"

    invoke-virtual {p1, v1, v0}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->getLastUpdatedVersion()Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    const-string v1, "$lastUpdatedVersion"

    invoke-virtual {p1, v1, v0}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->toJsonElement()Le/c/c/j;

    move-result-object v2

    invoke-virtual {v2}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v2

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    instance-of v4, v3, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    if-eqz v4, :cond_2

    .line 11
    check-cast v3, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    invoke-direct {v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->fillJsonMetadata(Le/c/c/m;)V

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getTwinMetadata()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;)V

    return-object v1
.end method

.method public getTwinMetadata(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;)V

    return-object v0
.end method

.method public final getTwinMetadataFinal()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->twinMetadata:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;)V

    return-object v1
.end method

.method public final getTwinMetadataFinal(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->metadataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;-><init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;)V

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVersionFinal()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v1, p2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Ljava/util/Map;)V

    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p2, "$version"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "$metadata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateMap(Ljava/util/Map;)V

    :cond_1
    return-object v0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->putFinal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "map to add cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final putAllFinal(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->putFinal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "map to add cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final putFinal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v1, p2}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;-><init>(Ljava/util/Map;)V

    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p2, "$version"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "$metadata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateMap(Ljava/util/Map;)V

    :cond_1
    return-object v0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->mapToJsonElement(Ljava/util/Map;)Le/c/c/j;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElementWithMetadata()Le/c/c/j;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->mapToJsonElement(Ljava/util/Map;)Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v2, "$version"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 4
    :cond_0
    new-instance v1, Le/c/c/m;

    invoke-direct {v1}, Le/c/c/m;-><init>()V

    .line 5
    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->fillJsonMetadata(Le/c/c/m;)V

    .line 6
    invoke-virtual {v1}, Le/c/c/m;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "$metadata"

    .line 7
    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;->toJsonElementWithMetadata()Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
