.class public Lj/a/a/a/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lj/a/a/a/a/a/k;

.field public final h:Lj/a/a/a/a/a/g;

.field public final i:Landroid/os/Handler;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj/a/a/a/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;",
            "Lj/a/a/a/a/a/k;",
            "Lj/a/a/a/a/a/g;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->j:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->k:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->l:Ljava/util/Map;

    .line 6
    new-instance v0, Lj/a/a/a/a/a/a$a$a;

    invoke-direct {v0, p0}, Lj/a/a/a/a/a/a$a$a;-><init>(Lj/a/a/a/a/a/a$a;)V

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->m:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lj/a/a/a/a/a/a$a$b;

    invoke-direct {v0, p0}, Lj/a/a/a/a/a/a$a$b;-><init>(Lj/a/a/a/a/a/a$a;)V

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->n:Ljava/lang/Runnable;

    .line 8
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lj/a/a/a/a/a/a$a;->f:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 10
    iput-object p5, p0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    .line 11
    iput-object p6, p0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    const/4 p5, 0x0

    .line 12
    iput-boolean p5, p0, Lj/a/a/a/a/a/a$a;->e:Z

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget v2, p4, Lj/a/a/a/a/a/k;->A:I

    if-eq v2, v1, :cond_2

    if-eqz v0, :cond_1

    .line 15
    iget-boolean v0, p4, Lj/a/a/a/a/a/k;->G:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 16
    :goto_1
    iput-boolean v0, p0, Lj/a/a/a/a/a/a$a;->d:Z

    .line 17
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p2, :cond_3

    .line 18
    iget-boolean p2, p4, Lj/a/a/a/a/a/k;->E:Z

    if-nez p2, :cond_4

    :cond_3
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 19
    :goto_2
    iput-boolean p2, p0, Lj/a/a/a/a/a/a$a;->b:Z

    .line 20
    iget-wide p2, p4, Lj/a/a/a/a/a/k;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    if-eqz p1, :cond_5

    .line 21
    iget-boolean p1, p4, Lj/a/a/a/a/a/k;->F:Z

    if-nez p1, :cond_6

    :cond_5
    const/4 p5, 0x1

    .line 22
    :cond_6
    iput-boolean p5, p0, Lj/a/a/a/a/a/a$a;->c:Z

    if-eqz p5, :cond_7

    .line 23
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->m:Ljava/lang/Runnable;

    invoke-virtual {p6, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj/a/a/a/a/a/a$a;->e:Z

    .line 2
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 6
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(ILj/a/a/a/a/a/j;)V
    .locals 3

    .line 8
    iget-boolean v0, p0, Lj/a/a/a/a/a/a$a;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lj/a/a/a/a/a/a$a;->a(Lj/a/a/a/a/a/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p2, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lj/a/a/a/a/a/a$a;->d:Z

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->l:Ljava/util/Map;

    monitor-enter v1

    .line 13
    :try_start_0
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->l:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 14
    iget-object v2, p0, Lj/a/a/a/a/a/a$a;->l:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a/a/a/a/a/j;

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 17
    iget v0, v0, Lj/a/a/a/a/a/k;->A:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 18
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    invoke-virtual {v0, v1, p2}, Lj/a/a/a/a/a/g;->a(ILj/a/a/a/a/a/j;)V

    :cond_1
    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 20
    iget p1, p1, Lj/a/a/a/a/a/k;->A:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_5

    .line 21
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    iget-object p2, p0, Lj/a/a/a/a/a/a$a;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    iget-object p2, p0, Lj/a/a/a/a/a/a$a;->n:Ljava/lang/Runnable;

    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 23
    iget-wide v0, v0, Lj/a/a/a/a/a/k;->I:J

    .line 24
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 26
    :cond_2
    iget-boolean v1, p0, Lj/a/a/a/a/a/a$a;->c:Z

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_2
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->k:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->k:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_3
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 32
    :cond_4
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    invoke-virtual {v0, p1, p2}, Lj/a/a/a/a/a/g;->a(ILj/a/a/a/a/a/j;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/j;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lj/a/a/a/a/a/a$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-boolean v0, p0, Lj/a/a/a/a/a/a$a;->b:Z

    if-eqz v0, :cond_3

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a/a/a/a/a/j;

    .line 37
    invoke-virtual {p0, v1}, Lj/a/a/a/a/a/a$a;->a(Lj/a/a/a/a/a/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 39
    :cond_3
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    invoke-virtual {v0, p1}, Lj/a/a/a/a/a/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lj/a/a/a/a/a/j;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 40
    iget-object v2, v0, Lj/a/a/a/a/a/a$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/a/a/a/a/a/h;

    const/4 v5, 0x0

    if-eqz v3, :cond_12

    const/4 v6, 0x1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 41
    :cond_1
    iget-object v7, v1, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 42
    iget-object v8, v3, Lj/a/a/a/a/a/h;->y:Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_7

    .line 43
    :cond_2
    iget-object v7, v1, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    if-nez v7, :cond_3

    .line 44
    iget-object v8, v3, Lj/a/a/a/a/a/h;->x:Ljava/lang/String;

    if-nez v8, :cond_11

    iget-object v8, v3, Lj/a/a/a/a/a/h;->z:Landroid/os/ParcelUuid;

    if-nez v8, :cond_11

    iget-object v8, v3, Lj/a/a/a/a/a/h;->F:[B

    if-nez v8, :cond_11

    iget-object v8, v3, Lj/a/a/a/a/a/h;->C:[B

    if-eqz v8, :cond_3

    goto/16 :goto_7

    .line 45
    :cond_3
    iget-object v8, v3, Lj/a/a/a/a/a/h;->x:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 46
    iget-object v9, v7, Lj/a/a/a/a/a/i;->f:Ljava/lang/String;

    .line 47
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_7

    .line 48
    :cond_4
    iget-object v8, v3, Lj/a/a/a/a/a/h;->z:Landroid/os/ParcelUuid;

    if-eqz v8, :cond_c

    iget-object v9, v3, Lj/a/a/a/a/a/h;->A:Landroid/os/ParcelUuid;

    .line 49
    iget-object v10, v7, Lj/a/a/a/a/a/i;->b:Ljava/util/List;

    if-nez v10, :cond_5

    goto :goto_3

    .line 50
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    if-nez v9, :cond_7

    move-object v12, v5

    goto :goto_0

    .line 51
    :cond_7
    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    .line 52
    :goto_0
    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v11

    if-nez v12, :cond_8

    .line 53
    invoke-virtual {v13, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2

    .line 54
    :cond_8
    invoke-virtual {v13}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    and-long v14, v14, v16

    .line 55
    invoke-virtual {v11}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual {v12}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v18

    and-long v16, v16, v18

    cmp-long v18, v14, v16

    if-eqz v18, :cond_9

    goto :goto_1

    .line 56
    :cond_9
    invoke-virtual {v13}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v15

    and-long/2addr v13, v15

    .line 57
    invoke-virtual {v11}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v15

    invoke-virtual {v12}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v11

    and-long/2addr v11, v15

    cmp-long v15, v13, v11

    if-nez v15, :cond_a

    const/4 v11, 0x1

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_c

    goto :goto_7

    .line 58
    :cond_c
    iget-object v8, v3, Lj/a/a/a/a/a/h;->B:Landroid/os/ParcelUuid;

    if-eqz v8, :cond_e

    if-eqz v7, :cond_e

    .line 59
    iget-object v9, v3, Lj/a/a/a/a/a/h;->C:[B

    iget-object v10, v3, Lj/a/a/a/a/a/h;->D:[B

    .line 60
    iget-object v11, v7, Lj/a/a/a/a/a/i;->d:Ljava/util/Map;

    if-nez v11, :cond_d

    move-object v8, v5

    goto :goto_5

    .line 61
    :cond_d
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 62
    :goto_5
    invoke-virtual {v3, v9, v10, v8}, Lj/a/a/a/a/a/h;->a([B[B[B)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_7

    .line 63
    :cond_e
    iget v8, v3, Lj/a/a/a/a/a/h;->E:I

    if-ltz v8, :cond_10

    if-eqz v7, :cond_10

    .line 64
    iget-object v9, v3, Lj/a/a/a/a/a/h;->F:[B

    iget-object v10, v3, Lj/a/a/a/a/a/h;->G:[B

    .line 65
    iget-object v7, v7, Lj/a/a/a/a/a/i;->c:Landroid/util/SparseArray;

    if-nez v7, :cond_f

    goto :goto_6

    .line 66
    :cond_f
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 67
    :goto_6
    invoke-virtual {v3, v9, v10, v5}, Lj/a/a/a/a/a/h;->a([B[B[B)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_7

    :cond_10
    const/4 v4, 0x1

    :cond_11
    :goto_7
    if-eqz v4, :cond_0

    return v6

    .line 68
    :cond_12
    throw v5

    :cond_13
    return v4
.end method

.method public b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lj/a/a/a/a/a/a$a;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj/a/a/a/a/a/a$a;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/a/a/a/a/a/a$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lj/a/a/a/a/a/a$a;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lj/a/a/a/a/a/g;->a(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lj/a/a/a/a/a/a$a;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
