.class public final Lcom/microsoft/azure/storage/table/PropertyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public effectiveName:Ljava/lang/String;

.field public getter:Ljava/lang/reflect/Method;

.field public isEncrypted:Z

.field public name:Ljava/lang/String;

.field public setter:Ljava/lang/reflect/Method;

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->getter:Ljava/lang/reflect/Method;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->type:Ljava/lang/Class;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->isEncrypted:Z

    return-void
.end method

.method public static generatePropertyPairs(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/PropertyPair;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/table/TableServiceEntity;->isReflectedEntityCacheDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/microsoft/azure/storage/table/TableServiceEntity;->getReflectedEntityCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/PropertyPair;->generatePropertyPairsHelper(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/table/TableServiceEntity;->getReflectedEntityCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/PropertyPair;->generatePropertyPairsHelper(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static generatePropertyPairsHelper(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/PropertyPair;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_9

    aget-object v5, p0, v3

    .line 4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "get"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "set"

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "PartitionKey"

    .line 6
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "RowKey"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Timestamp"

    .line 7
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Etag"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "LastModified"

    .line 8
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/azure/storage/table/PropertyPair;

    goto :goto_1

    .line 11
    :cond_2
    new-instance v9, Lcom/microsoft/azure/storage/table/PropertyPair;

    invoke-direct {v9}, Lcom/microsoft/azure/storage/table/PropertyPair;-><init>()V

    .line 12
    iput-object v6, v9, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v9

    .line 14
    :goto_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    .line 15
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    iput-object v7, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->type:Ljava/lang/Class;

    .line 16
    iput-object v5, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->getter:Ljava/lang/reflect/Method;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v4, :cond_4

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 18
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    iput-object v5, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    .line 20
    :cond_4
    :goto_2
    const-class v7, Lcom/microsoft/azure/storage/table/StoreAs;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/microsoft/azure/storage/table/StoreAs;

    if-eqz v5, :cond_8

    .line 21
    invoke-interface {v5}, Lcom/microsoft/azure/storage/table/StoreAs;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 22
    iget-object v7, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v8, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    .line 23
    invoke-interface {v5}, Lcom/microsoft/azure/storage/table/StoreAs;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "StoreAs Annotation found for both getter and setter for property %s with unequal values."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_6
    :goto_3
    iget-object v4, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    invoke-interface {v5}, Lcom/microsoft/azure/storage/table/StoreAs;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 26
    invoke-interface {v5}, Lcom/microsoft/azure/storage/table/StoreAs;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    goto :goto_4

    .line 27
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "StoreAs Annotation found for property %s with empty value."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 28
    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/azure/storage/table/PropertyPair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/azure/storage/table/PropertyPair;

    iget-object v7, v7, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_a

    .line 32
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/azure/storage/table/PropertyPair;

    iget-object v7, v7, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    const-class v8, Lcom/microsoft/azure/storage/table/Encrypt;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    iput-boolean v7, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->isEncrypted:Z

    .line 33
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/azure/storage/table/PropertyPair;

    invoke-virtual {v6}, Lcom/microsoft/azure/storage/table/PropertyPair;->shouldProcess()Z

    move-result v6

    if-nez v6, :cond_b

    .line 34
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 35
    :cond_b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/azure/storage/table/PropertyPair;

    iget-object v6, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    invoke-static {v6}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 36
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_c
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/azure/storage/table/PropertyPair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/azure/storage/table/PropertyPair;

    iget-object v5, v5, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    iput-object v5, v6, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    goto :goto_5

    .line 38
    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 40
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/storage/table/PropertyPair;

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, v2, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    return-object v0
.end method


# virtual methods
.method public consumeEntityProperty(Lcom/microsoft/azure/storage/table/EntityProperty;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_d

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_1

    .line 6
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_3

    .line 9
    const-class v2, [Ljava/lang/Byte;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteObjectArray()[Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 11
    :cond_2
    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteArray()[B

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_5

    .line 14
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsBooleanObject()Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 16
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_7

    .line 19
    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDoubleObject()Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_8

    .line 24
    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsUUID()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 26
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_a

    .line 27
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsIntegerObject()Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsInteger()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_c

    .line 32
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 33
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsLongObject()Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_e

    .line 37
    const-class v2, Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDate()Ljava/util/Date;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_0
    return-void

    .line 39
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 40
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EdmType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Property %s with Edm Type %s cannot be de-serialized."

    .line 41
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public generateEntityProperty(Ljava/lang/Object;)Lcom/microsoft/azure/storage/table/EntityProperty;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->getter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-direct {v1, p1, v0}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-boolean p1, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->isEncrypted:Z

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setIsEncrypted(Z)V

    return-object v1
.end method

.method public shouldProcess()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->getter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-class v2, Lcom/microsoft/azure/storage/table/Ignore;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-class v2, Lcom/microsoft/azure/storage/table/Ignore;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->getter:Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/PropertyPair;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method
