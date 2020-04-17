.class public Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ITEM_COUNT:I = 0xfa


# instance fields
.field public mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/microsoft/identity/common/internal/controllers/BaseCommand;",
            "Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0xfa

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->getValue()Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 7
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public put(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;

    invoke-direct {v0, p2}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V

    .line 2
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
