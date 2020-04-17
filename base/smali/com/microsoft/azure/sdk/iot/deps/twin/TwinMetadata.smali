.class public Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAST_UPDATE_TAG:Ljava/lang/String; = "$lastUpdated"

.field public static final LAST_UPDATE_VERSION_TAG:Ljava/lang/String; = "$lastUpdatedVersion"


# instance fields
.field public lastUpdated:Ljava/util/Date;

.field public lastUpdatedVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdated:Ljava/util/Date;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->getLastUpdatedVersion()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadata to copy cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdated:Ljava/util/Date;

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    if-nez p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdated:Ljava/util/Date;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no valid data to create a TwinMetadata."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public static tryExtractFromMap(Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v1

    move-object v2, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "$lastUpdated"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "$lastUpdatedVersion"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version in the metadata shall be a number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez v0, :cond_6

    .line 10
    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/util/Tools;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object v1

    .line 11
    :cond_6
    :goto_1
    new-instance p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;

    invoke-direct {p0, v2, v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method


# virtual methods
.method public getLastUpdated()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdated:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdated:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLastUpdatedVersion()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 3

    .line 1
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdated:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->dateTimeUtcToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v2, "$lastUpdated"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v2, "$lastUpdatedVersion"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinMetadata;->toJsonElement()Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
