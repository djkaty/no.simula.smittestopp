.class public Lg/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Z

.field public f:[Lg/a/a;

.field public volatile g:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public volatile h:I

.field public volatile i:Lg/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/a/d/a;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg/a/d/a;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lg/a/d/a;->f:[Lg/a/a;

    .line 5
    iput-object v0, p0, Lg/a/d/a;->g:[Ljava/lang/Enum;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lg/a/d/a;->h:I

    .line 7
    iput-object p1, p0, Lg/a/d/a;->b:Ljava/lang/Class;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lg/a/d/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    iput-boolean p3, p0, Lg/a/d/a;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/Class;II)Lg/a/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;II)",
            "Lg/a/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lg/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lg/a/d/a;-><init>(Ljava/lang/Class;IZ)V

    return-object p2
.end method


# virtual methods
.method public final a()Lg/a/b;
    .locals 3

    .line 15
    iget-object v0, p0, Lg/a/d/a;->i:Lg/a/b;

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lg/a/d/a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v1, Lg/a/b;->B:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/b;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lg/a/b;->b(Ljava/lang/String;)Lg/a/b;

    move-result-object v1

    .line 19
    :goto_0
    iput-object v1, p0, Lg/a/d/a;->i:Lg/a/b;

    .line 20
    iget-object v0, p0, Lg/a/d/a;->i:Lg/a/b;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not load platform constants for "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lg/a/d/a;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    :goto_1
    iget-object v0, p0, Lg/a/d/a;->i:Lg/a/b;

    return-object v0
.end method

.method public final a(J)Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x100

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 3
    iget-object v0, p0, Lg/a/d/a;->g:[Ljava/lang/Enum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/d/a;->g:[Ljava/lang/Enum;

    long-to-int v1, p1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lg/a/d/a;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lg/a/d/a;->a()Lg/a/b;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lg/a/b;->y:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a;

    if-eqz v0, :cond_4

    .line 7
    :try_start_0
    iget-object v1, p0, Lg/a/d/a;->b:Ljava/lang/Class;

    invoke-interface {v0}, Lg/a/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lg/a/d/a;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0}, Lg/a/a;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    invoke-interface {v0}, Lg/a/a;->intValue()I

    move-result p1

    const/16 p2, 0x100

    if-ge p1, p2, :cond_3

    .line 10
    iget-object p1, p0, Lg/a/d/a;->g:[Ljava/lang/Enum;

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lg/a/d/a;->b:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    .line 12
    :cond_2
    invoke-interface {v0}, Lg/a/a;->intValue()I

    move-result p2

    aput-object v1, p1, p2

    .line 13
    iput-object p1, p0, Lg/a/d/a;->g:[Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    .line 14
    :catch_0
    :cond_4
    iget-object p1, p0, Lg/a/d/a;->b:Ljava/lang/Class;

    const-string p2, "__UNKNOWN_CONSTANT__"

    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Enum;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object p1

    invoke-interface {p1}, Lg/a/a;->defined()Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Enum;)Lg/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lg/a/a;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lg/a/d/a;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/d/a;->f:[Lg/a/a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lg/a/d/a;->d(Ljava/lang/Enum;)Lg/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Enum;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)J"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object p1

    invoke-interface {p1}, Lg/a/a;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/lang/Enum;)Lg/a/a;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lg/a/a;"
        }
    .end annotation

    move-object v1, p0

    .line 1
    iget-object v2, v1, Lg/a/d/a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget v0, v1, Lg/a/d/a;->h:I

    if-eqz v0, :cond_0

    iget-object v0, v1, Lg/a/d/a;->f:[Lg/a/a;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 3
    monitor-exit v2

    return-object v0

    .line 4
    :cond_0
    iget-object v0, v1, Lg/a/d/a;->b:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lg/a/d/a;->a()Lg/a/b;

    move-result-object v3

    .line 6
    iget-object v4, v1, Lg/a/d/a;->f:[Lg/a/a;

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v4

    new-array v4, v4, [Lg/a/a;

    iput-object v4, v1, Lg/a/d/a;->f:[Lg/a/a;

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Enum;

    .line 9
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    .line 10
    iget-object v14, v3, Lg/a/b;->x:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/a/a;

    if-nez v13, :cond_3

    .line 11
    iget-boolean v13, v1, Lg/a/d/a;->e:Z

    if-eqz v13, :cond_2

    .line 12
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    shl-long/2addr v11, v13

    or-long/2addr v8, v11

    .line 13
    new-instance v13, Lg/a/d/a$a;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v4, v5, v11}, Lg/a/d/a$a;-><init>(JLjava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    new-instance v13, Lg/a/d/a$a;

    iget-object v14, v1, Lg/a/d/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v12, v14}, Lg/a/d/a$a;-><init>(JLjava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-boolean v11, v1, Lg/a/d/a;->e:Z

    if-eqz v11, :cond_4

    .line 16
    invoke-interface {v13}, Lg/a/a;->longValue()J

    move-result-wide v11

    or-long/2addr v6, v11

    .line 17
    :cond_4
    :goto_1
    iget-object v11, v1, Lg/a/d/a;->f:[Lg/a/a;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput-object v13, v11, v10

    goto :goto_0

    .line 18
    :cond_5
    iget-boolean v0, v1, Lg/a/d/a;->e:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 19
    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide v13

    cmp-long v0, v13, v4

    if-eqz v0, :cond_6

    .line 20
    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    not-long v13, v6

    .line 21
    invoke-static {v13, v14}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shl-int v10, v3, v10

    .line 22
    iget-object v13, v1, Lg/a/d/a;->f:[Lg/a/a;

    new-instance v14, Lg/a/d/a$a;

    int-to-long v4, v10

    iget-object v10, v1, Lg/a/d/a;->f:[Lg/a/a;

    aget-object v10, v10, v0

    invoke-interface {v10}, Lg/a/a;->name()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v4, v5, v10}, Lg/a/d/a$a;-><init>(JLjava/lang/String;)V

    aput-object v14, v13, v0

    or-long/2addr v6, v4

    shl-long v4, v11, v0

    not-long v4, v4

    and-long/2addr v8, v4

    const-wide/16 v4, 0x0

    goto :goto_2

    .line 23
    :cond_6
    iput v3, v1, Lg/a/d/a;->h:I

    .line 24
    iget-object v0, v1, Lg/a/d/a;->f:[Lg/a/a;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
