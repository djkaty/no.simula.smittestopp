.class public Ld/u/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/w/a/e;
.implements Ld/w/a/d;


# static fields
.field public static final F:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ld/u/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:[Ljava/lang/String;

.field public final B:[[B

.field public final C:[I

.field public final D:I

.field public E:I

.field public volatile x:Ljava/lang/String;

.field public final y:[J

.field public final z:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Ld/u/i;->F:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/u/i;->D:I

    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Ld/u/i;->C:[I

    .line 4
    new-array v0, p1, [J

    iput-object v0, p0, Ld/u/i;->y:[J

    .line 5
    new-array v0, p1, [D

    iput-object v0, p0, Ld/u/i;->z:[D

    .line 6
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Ld/u/i;->A:[Ljava/lang/String;

    .line 7
    new-array p1, p1, [[B

    iput-object p1, p0, Ld/u/i;->B:[[B

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ld/u/i;
    .locals 4

    .line 1
    sget-object v0, Ld/u/i;->F:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Ld/u/i;->F:Ljava/util/TreeMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Ld/u/i;->F:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/u/i;

    .line 6
    iput-object p0, v1, Ld/u/i;->x:Ljava/lang/String;

    .line 7
    iput p1, v1, Ld/u/i;->E:I

    .line 8
    monitor-exit v0

    return-object v1

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v0, Ld/u/i;

    invoke-direct {v0, p1}, Ld/u/i;-><init>(I)V

    .line 11
    iput-object p0, v0, Ld/u/i;->x:Ljava/lang/String;

    .line 12
    iput p1, v0, Ld/u/i;->E:I

    return-object v0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Ld/u/i;->x:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ld/w/a/d;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 15
    :goto_0
    iget v2, p0, Ld/u/i;->E:I

    if-gt v1, v2, :cond_5

    .line 16
    iget-object v2, p0, Ld/u/i;->C:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, p0, Ld/u/i;->B:[[B

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Ld/w/a/d;->bindBlob(I[B)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, p0, Ld/u/i;->A:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Ld/w/a/d;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v2, p0, Ld/u/i;->z:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Ld/w/a/d;->bindDouble(ID)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v2, p0, Ld/u/i;->y:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Ld/w/a/d;->bindLong(IJ)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-interface {p1, v1}, Ld/w/a/d;->bindNull(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Ld/u/i;->F:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Ld/u/i;->F:Ljava/util/TreeMap;

    iget v2, p0, Ld/u/i;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ld/u/i;->F:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 4
    sget-object v1, Ld/u/i;->F:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 5
    sget-object v2, Ld/u/i;->F:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindBlob(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/i;->C:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Ld/u/i;->B:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public bindDouble(ID)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/i;->C:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Ld/u/i;->z:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindLong(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/i;->C:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Ld/u/i;->y:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindNull(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/i;->C:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/i;->C:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Ld/u/i;->A:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
