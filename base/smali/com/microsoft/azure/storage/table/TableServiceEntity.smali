.class public Lcom/microsoft/azure/storage/table/TableServiceEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/table/TableEntity;


# static fields
.field public static final DEFAULT_CONCURRENCY_MULTIPLIER:I = 0x4

.field public static final DEFAULT_INITIAL_CAPACITY:I = 0x1f

.field public static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field public static disableReflectedEntityCache:Z = false

.field public static reflectedEntityCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/PropertyPair;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public etag:Ljava/lang/String;

.field public partitionKey:Ljava/lang/String;

.field public rowKey:Ljava/lang/String;

.field public timeStamp:Ljava/util/Date;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/table/TableServiceEntity;->initialize()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->reflectedEntityCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->partitionKey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->rowKey:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->etag:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->timeStamp:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->partitionKey:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->rowKey:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->etag:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->timeStamp:Ljava/util/Date;

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->partitionKey:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->rowKey:Ljava/lang/String;

    return-void
.end method

.method public static getReflectedEntityCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/PropertyPair;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->reflectedEntityCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static initialize()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/PropertyPair;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    mul-int/lit8 v0, v0, 0x4

    const/16 v2, 0x1f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v1
.end method

.method public static isReflectedEntityCacheDisabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->disableReflectedEntityCache:Z

    return v0
.end method

.method public static readEntityWithReflection(Ljava/lang/Object;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/table/PropertyPair;->generatePropertyPairs(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/PropertyPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v1, v0, p0}, Lcom/microsoft/azure/storage/table/PropertyPair;->consumeEntityProperty(Lcom/microsoft/azure/storage/table/EntityProperty;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setReflectedEntityCacheDisabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->reflectedEntityCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3
    :cond_0
    sput-boolean p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->disableReflectedEntityCache:Z

    return-void
.end method

.method public static writeEntityWithReflection(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/table/PropertyPair;->generatePropertyPairs(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/azure/storage/table/PropertyPair;

    iget-object v3, v3, Lcom/microsoft/azure/storage/table/PropertyPair;->effectiveName:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/storage/table/PropertyPair;

    invoke-virtual {v2, p0}, Lcom/microsoft/azure/storage/table/PropertyPair;->generateEntityProperty(Ljava/lang/Object;)Lcom/microsoft/azure/storage/table/EntityProperty;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->partitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->rowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->timeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public readEntity(Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/table/TableServiceEntity;->readEntityWithReflection(Ljava/lang/Object;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 2
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v3, 0x132

    const/4 v4, 0x0

    const-string v1, "InternalError"

    const-string v2, "The entity threw an exception during deserialization."

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception v11

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v9, 0x132

    const/4 v10, 0x0

    const-string v7, "InvalidDocument"

    const-string v8, "The entity threw an exception during deserialization."

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception v5

    .line 4
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v3, 0x132

    const/4 v4, 0x0

    const-string v1, "InvalidDocument"

    const-string v2, "The response received is invalid or improperly formatted."

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->etag:Ljava/lang/String;

    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->partitionKey:Ljava/lang/String;

    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->rowKey:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->timeStamp:Ljava/util/Date;

    return-void
.end method

.method public writeEntity(Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/TableServiceEntity;->writeEntityWithReflection(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v5

    .line 2
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v3, 0x132

    const/4 v4, 0x0

    const-string v1, "InternalError"

    const-string v2, "The entity threw an exception during serialization."

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception v11

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v9, 0x132

    const/4 v10, 0x0

    const-string v7, "InternalError"

    const-string v8, "An attempt was made to access an inaccessible member of the entity during serialization."

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1
.end method
