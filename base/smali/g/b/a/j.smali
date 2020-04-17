.class public Lg/b/a/j;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SourceFile"


# instance fields
.field public final A:[I

.field public final B:Ljava/lang/Object;

.field public final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Boolean;",
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

.field public x:[Lg/b/a/i;

.field public y:Ljava/nio/ByteBuffer;

.field public z:I


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    const/4 p1, 0x0

    new-array v0, p1, [Lg/b/a/i;

    .line 2
    iput-object v0, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lg/b/a/j;->A:[I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/b/a/j;->B:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg/b/a/j;->C:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/b/a/j;->D:Ljava/util/Set;

    .line 8
    sget-object v0, Lg/b/a/d;->a:Lg/b/a/c;

    .line 9
    iget-object v1, p0, Lg/b/a/j;->A:[I

    invoke-interface {v0, v1}, Lg/b/a/c;->a([I)I

    const/16 v0, 0x8

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    .line 11
    iget-object v0, p0, Lg/b/a/j;->A:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lg/b/a/j;->b(II)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Lg/b/a/j;->a(II)V

    .line 13
    iput v0, p0, Lg/b/a/j;->z:I

    new-array p1, v0, [Lg/b/a/i;

    .line 14
    iput-object p1, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public final a(J)I
    .locals 7

    .line 22
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeys()Ljava/util/Set;

    move-result-object v0

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 25
    check-cast v2, Lg/b/a/i;

    invoke-virtual {p0, v2}, Lg/b/a/j;->b(Lg/b/a/i;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->begin()V

    .line 29
    :cond_1
    sget-object v0, Lg/b/a/d;->a:Lg/b/a/c;

    .line 30
    iget-object v1, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    iget v2, p0, Lg/b/a/j;->z:I

    long-to-int v3, p1

    invoke-interface {v0, v1, v2, v3}, Lg/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_2

    .line 31
    sget-object v1, Lg/a/d/b;->EINTR:Lg/a/d/b;

    .line 32
    sget-object v2, Lg/b/a/d;->b:Lg/c/f;

    .line 33
    invoke-virtual {v2}, Lg/c/f;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lg/a/d/b;->valueOf(J)Lg/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->end()V

    const/4 p1, 0x1

    if-ge v0, p1, :cond_3

    return v0

    .line 35
    :cond_3
    iget-object p2, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p2

    and-int/2addr p2, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 36
    iget-object p2, p0, Lg/b/a/j;->A:[I

    aget p2, p2, v1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p2, p1}, Le/c/a/a/b/l/c;->a(ILjava/nio/ByteBuffer;)I

    .line 37
    :cond_4
    iget-object p1, p0, Lg/b/a/j;->C:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 38
    move-object v3, v2

    check-cast v3, Lg/b/a/i;

    .line 39
    iget v4, v3, Lg/b/a/i;->e:I

    .line 40
    iget-object v5, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_5

    .line 41
    iget v3, v3, Lg/b/a/i;->e:I

    .line 42
    iget-object v5, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    int-to-short v6, v1

    invoke-virtual {v5, v3, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_6

    and-int/lit8 v5, v3, 0x11

    or-int/2addr v5, v1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_7

    and-int/lit8 v6, v3, 0xc

    or-int/2addr v5, v6

    :cond_7
    and-int/lit8 v4, v4, 0x18

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    move v3, v5

    .line 44
    :goto_3
    move-object v4, v2

    check-cast v4, Lg/b/a/i;

    .line 45
    iput v3, v4, Lg/b/a/i;->d:I

    add-int/lit8 p2, p2, 0x1

    .line 46
    iget-object v3, p0, Lg/b/a/j;->D:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 47
    iget-object v3, p0, Lg/b/a/j;->D:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return p2

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->end()V

    .line 49
    throw p1

    :catchall_1
    move-exception p1

    .line 50
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(Lg/b/a/i;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lg/b/a/j;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lg/b/a/j;->z:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lg/b/a/j;->z:I

    .line 4
    iget-object v3, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 5
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v1

    new-array v5, v3, [Lg/b/a/i;

    .line 6
    iget-object v6, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    sub-int/2addr v1, v2

    invoke-static {v6, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v5, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    mul-int/lit8 v3, v3, 0x8

    .line 8
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    :cond_0
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    .line 13
    :cond_1
    iget v1, p0, Lg/b/a/j;->z:I

    sub-int/2addr v1, v2

    .line 14
    iput v1, p1, Lg/b/a/i;->e:I

    .line 15
    iget-object v3, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    iget v5, p0, Lg/b/a/j;->z:I

    sub-int/2addr v5, v2

    aput-object p1, v3, v5

    .line 16
    iget-object v3, p1, Lg/b/a/i;->b:Lg/b/a/g;

    invoke-interface {v3}, Lg/b/a/g;->getFD()I

    move-result v3

    .line 17
    invoke-virtual {p0, v1, v3}, Lg/b/a/j;->b(II)V

    .line 18
    iget v1, p1, Lg/b/a/i;->e:I

    .line 19
    invoke-virtual {p0, v1, v4}, Lg/b/a/j;->a(II)V

    .line 20
    iget-object v1, p0, Lg/b/a/j;->C:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(II)V
    .locals 1

    .line 25
    iget-object v0, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b(Lg/b/a/i;)V
    .locals 7

    .line 1
    iget v0, p1, Lg/b/a/i;->e:I

    .line 2
    iget-object v1, p0, Lg/b/a/j;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, p0, Lg/b/a/j;->z:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    iget v5, p0, Lg/b/a/j;->z:I

    add-int/2addr v5, v3

    aget-object v2, v2, v5

    .line 5
    iget-object v5, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    aput-object v2, v5, v0

    .line 6
    iget v5, v2, Lg/b/a/i;->e:I

    .line 7
    iget-object v6, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 8
    invoke-virtual {p0, v0, v4}, Lg/b/a/j;->b(II)V

    .line 9
    iget v4, v2, Lg/b/a/i;->e:I

    .line 10
    iget-object v5, p0, Lg/b/a/j;->y:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    .line 11
    invoke-virtual {p0, v0, v4}, Lg/b/a/j;->a(II)V

    .line 12
    iput v0, v2, Lg/b/a/i;->e:I

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0, v3}, Lg/b/a/j;->b(II)V

    .line 14
    invoke-virtual {p0, v0, v4}, Lg/b/a/j;->a(II)V

    .line 15
    :goto_0
    iget-object v0, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    iget v2, p0, Lg/b/a/j;->z:I

    add-int/2addr v2, v3

    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 16
    iget v0, p0, Lg/b/a/j;->z:I

    add-int/2addr v0, v3

    iput v0, p0, Lg/b/a/j;->z:I

    .line 17
    iget-object v0, p0, Lg/b/a/j;->D:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v2, p0, Lg/b/a/j;->D:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    iget-object v0, p0, Lg/b/a/j;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public implCloseSelector()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/b/a/j;->A:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2
    aget v0, v0, v1

    invoke-static {v0}, Le/c/a/a/b/l/c;->a(I)I

    .line 3
    :cond_0
    iget-object v0, p0, Lg/b/a/j;->A:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-eq v2, v3, :cond_1

    .line 4
    aget v0, v0, v1

    invoke-static {v0}, Le/c/a/a/b/l/c;->a(I)I

    .line 5
    :cond_1
    iget-object v0, p0, Lg/b/a/j;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 6
    check-cast v1, Lg/b/a/i;

    invoke-virtual {p0, v1}, Lg/b/a/j;->b(Lg/b/a/i;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public keys()Ljava/util/Set;
    .locals 4
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

    iget-object v1, p0, Lg/b/a/j;->x:[Lg/b/a/i;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lg/b/a/j;->z:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 1
    new-instance v0, Lg/b/a/i;

    check-cast p1, Lg/b/a/g;

    invoke-direct {v0, p0, p1}, Lg/b/a/i;-><init>(Lg/b/a/j;Lg/b/a/g;)V

    .line 2
    invoke-virtual {p0, v0}, Lg/b/a/j;->a(Lg/b/a/i;)V

    .line 3
    invoke-virtual {v0, p3}, Ljava/nio/channels/spi/AbstractSelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p2}, Lg/b/a/i;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public select()I
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lg/b/a/j;->a(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lg/b/a/j;->a(J)I

    move-result p1

    return p1
.end method

.method public selectNow()I
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/b/a/j;->a(J)I

    move-result v0

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
    iget-object v0, p0, Lg/b/a/j;->D:Ljava/util/Set;

    return-object v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/b/a/j;->A:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->b(ILjava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
