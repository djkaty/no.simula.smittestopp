.class public Lg/b/a/b;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/b/a/b$d;,
        Lg/b/a/b$c;,
        Lg/b/a/b$b;
    }
.end annotation


# instance fields
.field public final A:[I

.field public final B:Ljava/lang/Object;

.field public final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg/b/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Lg/b/a/e;

.field public x:I

.field public final y:Lg/c/f;

.field public final z:Lg/b/a/b$c;


# direct methods
.method public constructor <init>(Lg/b/a/h;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lg/b/a/b;->x:I

    .line 3
    sget-object p1, Lg/c/f$a;->a:Lg/c/f;

    .line 4
    iput-object p1, p0, Lg/b/a/b;->y:Lg/c/f;

    .line 5
    sget-object p1, Lg/b/a/b$c;->c:Lg/b/a/b$c;

    .line 6
    iput-object p1, p0, Lg/b/a/b;->z:Lg/b/a/b$c;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 7
    fill-array-data p1, :array_0

    iput-object p1, p0, Lg/b/a/b;->A:[I

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/b/a/b;->B:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lg/b/a/b;->C:Ljava/util/Map;

    .line 10
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg/b/a/b;->D:Ljava/util/Set;

    .line 11
    new-instance p1, Lg/b/a/e;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lg/b/a/e;-><init>(JJ)V

    const/4 p1, 0x0

    throw p1

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public final a()I
    .locals 11

    .line 21
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeys()Ljava/util/Set;

    move-result-object v0

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lg/b/a/b;->B:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 25
    check-cast v4, Lg/b/a/a;

    .line 26
    iget-object v5, p0, Lg/b/a/b;->C:Ljava/util/Map;

    invoke-virtual {v4}, Lg/b/a/a;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/b/a/b$b;

    .line 27
    invoke-virtual {p0, v4}, Ljava/nio/channels/spi/AbstractSelector;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 28
    iget-object v6, p0, Lg/b/a/b;->D:Ljava/util/Set;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    iget-object v8, p0, Lg/b/a/b;->D:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    iget-object v6, v5, Lg/b/a/b$b;->b:Ljava/util/Set;

    .line 32
    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object v5, v5, Lg/b/a/b$b;->b:Ljava/util/Set;

    .line 34
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, 0x64

    if-lt v7, v4, :cond_0

    .line 35
    sget-object v4, Lg/b/a/d;->a:Lg/b/a/c;

    .line 36
    iget v5, p0, Lg/b/a/b;->x:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lg/b/a/b;->E:Lg/b/a/e;

    invoke-interface/range {v4 .. v10}, Lg/b/a/c;->a(ILg/c/e;ILg/c/e;ILg/b/a/e;)I

    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lg/b/a/b;->z:Lg/b/a/b$c;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lg/b/a/a;->a()I

    move-result v3

    const/4 v8, -0x1

    const/4 v9, 0x2

    move-object v4, v2

    move v6, v7

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lg/b/a/b$c;->a(Lg/c/e;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v2

    .line 38
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 39
    :cond_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    :try_start_6
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 41
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v7

    :catchall_1
    move-exception v2

    .line 42
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    :catchall_2
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public final a(J)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lg/b/a/b;->a()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->begin()V

    .line 3
    :cond_0
    sget-object v0, Lg/b/a/d;->a:Lg/b/a/c;

    .line 4
    iget v1, p0, Lg/b/a/b;->x:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x0

    move v3, v7

    invoke-interface/range {v0 .. v6}, Lg/b/a/c;->a(ILg/c/e;ILg/c/e;ILg/b/a/e;)I

    move-result p1

    if-gez p1, :cond_1

    .line 5
    sget-object p2, Lg/a/d/b;->EINTR:Lg/a/d/b;

    .line 6
    sget-object v0, Lg/b/a/d;->b:Lg/c/f;

    .line 7
    invoke-virtual {v0}, Lg/c/f;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lg/a/d/b;->valueOf(J)Lg/a/d/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->end()V

    const/4 p2, 0x0

    .line 9
    iget-object v0, p0, Lg/b/a/b;->B:Ljava/lang/Object;

    monitor-enter v0

    if-gtz p1, :cond_2

    .line 10
    :try_start_1
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lg/b/a/b;->z:Lg/b/a/b$c;

    .line 12
    iget-object p1, p1, Lg/b/a/b$c;->a:Lg/b/a/b$d;

    .line 13
    iget p2, p1, Lg/c/h;->f:I

    .line 14
    iget-object p1, p1, Lg/b/a/b$d;->g:Lg/c/h$i;

    invoke-virtual {p1}, Lg/c/h$a;->a()J

    throw v8

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->end()V

    .line 17
    throw p1

    .line 18
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    rem-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 20
    new-instance v2, Lg/b/a/e;

    invoke-direct {v2, v0, v1, p1, p2}, Lg/b/a/e;-><init>(JJ)V

    throw v8
.end method

.method public a(Lg/b/a/a;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lg/b/a/b;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lg/b/a/b;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lg/b/a/a;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/b/a/b$b;

    invoke-virtual {p0, p1}, Lg/b/a/b;->a(Lg/b/a/b$b;)V

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lg/b/a/b$b;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 44
    iget-object v2, v1, Lg/b/a/b;->B:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v3, v0, Lg/b/a/b$b;->b:Ljava/util/Set;

    .line 46
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/b/a/a;

    .line 47
    iget v8, v7, Lg/b/a/a;->c:I

    and-int/lit8 v8, v8, 0x11

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 48
    :cond_1
    iget v7, v7, Lg/b/a/a;->c:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Integer;

    const/4 v8, -0x1

    .line 49
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    const/4 v9, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_8

    aget-object v12, v7, v10

    .line 50
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x8

    const/16 v15, 0x25

    if-ne v13, v8, :cond_4

    if-lez v5, :cond_3

    .line 51
    iget-boolean v13, v0, Lg/b/a/b$b;->d:Z

    if-nez v13, :cond_3

    .line 52
    iput-boolean v11, v0, Lg/b/a/b$b;->d:Z

    const/16 v13, 0x25

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    .line 53
    iget-boolean v13, v0, Lg/b/a/b$b;->d:Z

    if-eqz v13, :cond_4

    .line 54
    iput-boolean v4, v0, Lg/b/a/b$b;->d:Z

    const/16 v13, 0x8

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 55
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_6

    if-lez v6, :cond_5

    .line 56
    iget-boolean v3, v0, Lg/b/a/b$b;->c:Z

    if-nez v3, :cond_5

    .line 57
    iput-boolean v11, v0, Lg/b/a/b$b;->c:Z

    const/16 v21, 0x25

    goto :goto_3

    :cond_5
    if-nez v6, :cond_6

    .line 58
    iget-boolean v3, v0, Lg/b/a/b$b;->c:Z

    if-eqz v3, :cond_6

    .line 59
    iput-boolean v4, v0, Lg/b/a/b$b;->c:Z

    const/16 v21, 0x8

    goto :goto_3

    :cond_6
    move/from16 v21, v13

    :goto_3
    if-nez v21, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    goto :goto_1

    .line 60
    :cond_7
    iget-object v3, v1, Lg/b/a/b;->z:Lg/b/a/b$c;

    const/16 v17, 0x0

    .line 61
    iget v0, v0, Lg/b/a/b$b;->a:I

    .line 62
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v18, 0x0

    move-object/from16 v16, v3

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v21}, Lg/b/a/b$c;->a(Lg/c/e;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    throw v0

    .line 63
    :cond_8
    :try_start_1
    sget-object v3, Lg/b/a/d;->a:Lg/b/a/c;

    .line 64
    iget v4, v1, Lg/b/a/b;->x:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v1, Lg/b/a/b;->E:Lg/b/a/e;

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v9}, Lg/b/a/c;->a(ILg/c/e;ILg/c/e;ILg/b/a/e;)I

    .line 65
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public implCloseSelector()V
    .locals 5

    .line 1
    iget v0, p0, Lg/b/a/b;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/a/a/b/l/c;->a(I)I

    .line 3
    :cond_0
    iget-object v0, p0, Lg/b/a/b;->A:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    if-eq v3, v1, :cond_1

    .line 4
    aget v0, v0, v2

    invoke-static {v0}, Le/c/a/a/b/l/c;->a(I)I

    .line 5
    :cond_1
    iget-object v0, p0, Lg/b/a/b;->A:[I

    const/4 v3, 0x1

    aget v4, v0, v3

    if-eq v4, v1, :cond_2

    .line 6
    aget v0, v0, v3

    invoke-static {v0}, Le/c/a/a/b/l/c;->a(I)I

    .line 7
    :cond_2
    iget-object v0, p0, Lg/b/a/b;->A:[I

    iput v1, p0, Lg/b/a/b;->x:I

    aput v1, v0, v3

    aput v1, v0, v2

    .line 8
    iget-object v0, p0, Lg/b/a/b;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/b/a/b$b;

    .line 10
    iget-object v1, v1, Lg/b/a/b$b;->b:Ljava/util/Set;

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/b/a/a;

    .line 12
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractSelector;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public keys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lg/b/a/b;->C:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/b/a/b$b;

    .line 3
    iget-object v2, v2, Lg/b/a/b$b;->b:Ljava/util/Set;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3

    .line 1
    new-instance v0, Lg/b/a/a;

    check-cast p1, Lg/b/a/g;

    invoke-direct {v0, p0, p1, p2}, Lg/b/a/a;-><init>(Lg/b/a/b;Lg/b/a/g;I)V

    .line 2
    iget-object p1, p0, Lg/b/a/b;->B:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    new-instance p2, Lg/b/a/b$b;

    invoke-virtual {v0}, Lg/b/a/a;->a()I

    move-result v1

    invoke-direct {p2, v1}, Lg/b/a/b$b;-><init>(I)V

    .line 4
    iget-object v1, p0, Lg/b/a/b;->C:Ljava/util/Map;

    invoke-virtual {v0}, Lg/b/a/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p2, Lg/b/a/b$b;->b:Ljava/util/Set;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p2}, Lg/b/a/b;->a(Lg/b/a/b$b;)V

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0, p3}, Ljava/nio/channels/spi/AbstractSelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception p2

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public select()I
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lg/b/a/b;->a(J)I

    const/4 v0, 0x0

    return v0
.end method

.method public select(J)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/b/a/b;->a(J)I

    const/4 p1, 0x0

    return p1
.end method

.method public selectNow()I
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/b/a/b;->a(J)I

    const/4 v0, 0x0

    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/b/a/b;->D:Ljava/util/Set;

    return-object v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 5

    .line 1
    sget-object v0, Lg/b/a/d;->a:Lg/b/a/c;

    .line 2
    iget-object v1, p0, Lg/b/a/b;->A:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    new-array v2, v2, [B

    const-wide/16 v3, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lg/b/a/c;->a(I[BJ)I

    return-object p0
.end method
