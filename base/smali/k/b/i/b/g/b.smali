.class public Lk/b/i/b/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lk/b/i/b/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public transient y:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    iput-wide p1, p0, Lk/b/i/b/g/b;->y:J

    return-void
.end method

.method public constructor <init>(Lk/b/i/b/g/b;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    iget-object v0, p1, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    new-instance v3, Lk/b/i/b/g/a;

    iget-object v4, p1, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/a;

    invoke-direct {v3, v4}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/a;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Lk/b/i/b/g/b;->y:J

    return-void
.end method

.method public constructor <init>(Lk/b/i/b/g/r;J[B[B)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, v0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    .line 1
    iget v4, v1, Lk/b/i/b/g/r;->c:I

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    sub-long/2addr v7, v5

    .line 2
    iput-wide v7, v0, Lk/b/i/b/g/b;->y:J

    const-wide/16 v9, 0x0

    :goto_0
    cmp-long v4, v9, p2

    if-gez v4, :cond_b

    .line 3
    iget-object v4, v1, Lk/b/i/b/g/r;->b:Lk/b/i/b/g/w;

    .line 4
    iget v11, v4, Lk/b/i/b/g/w;->b:I

    shr-long v12, v9, v11

    shl-long v14, v5, v11

    sub-long/2addr v14, v5

    and-long v5, v9, v14

    long-to-int v6, v5

    .line 5
    new-instance v5, Lk/b/i/b/g/j$b;

    invoke-direct {v5}, Lk/b/i/b/g/j$b;-><init>()V

    invoke-virtual {v5, v12, v13}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/j$b;

    .line 6
    iput v6, v5, Lk/b/i/b/g/j$b;->e:I

    .line 7
    invoke-virtual {v5}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/j;

    const/16 v16, 0x1

    shl-int v7, v16, v11

    add-int/lit8 v8, v7, -0x1

    move-wide/from16 v19, v12

    const/4 v12, 0x0

    if-ge v6, v8, :cond_2

    .line 8
    iget-object v13, v0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    move/from16 v21, v8

    .line 9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 10
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/b/i/b/g/a;

    if-eqz v8, :cond_1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v23, v4

    const/4 v8, 0x0

    goto :goto_2

    .line 11
    :cond_1
    :goto_1
    new-instance v6, Lk/b/i/b/g/a;

    .line 12
    invoke-virtual {v4}, Lk/b/i/b/g/w;->a()Lk/b/i/b/g/k;

    move-result-object v8

    .line 13
    iget v13, v4, Lk/b/i/b/g/w;->b:I

    .line 14
    iget v12, v4, Lk/b/i/b/g/w;->c:I

    shl-int v22, v16, v13

    move-object/from16 v23, v4

    add-int/lit8 v4, v22, -0x1

    .line 15
    invoke-direct {v6, v8, v13, v12, v4}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/k;III)V

    invoke-virtual {v6, v2, v3, v5}, Lk/b/i/b/g/a;->a([B[BLk/b/i/b/g/j;)V

    .line 16
    iget-object v4, v0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    const/4 v8, 0x0

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 18
    invoke-interface {v4, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_2
    invoke-virtual {v0, v8, v2, v3, v5}, Lk/b/i/b/g/b;->a(I[B[BLk/b/i/b/g/j;)Lk/b/i/b/g/a;

    goto :goto_3

    :cond_2
    move-object/from16 v23, v4

    move/from16 v21, v8

    const/4 v8, 0x0

    :goto_3
    move-wide/from16 v12, v19

    const/4 v4, 0x1

    .line 20
    :goto_4
    iget v5, v1, Lk/b/i/b/g/r;->d:I

    if-ge v4, v5, :cond_a

    and-long v5, v12, v14

    long-to-int v6, v5

    shr-long/2addr v12, v11

    .line 21
    new-instance v5, Lk/b/i/b/g/j$b;

    invoke-direct {v5}, Lk/b/i/b/g/j$b;-><init>()V

    invoke-virtual {v5, v4}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/j$b;

    invoke-virtual {v5, v12, v13}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/j$b;

    .line 22
    iput v6, v5, Lk/b/i/b/g/j$b;->e:I

    .line 23
    invoke-virtual {v5}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/j;

    iget-object v8, v0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const-wide/16 v17, 0x0

    cmp-long v1, v9, v17

    if-nez v1, :cond_3

    move v1, v11

    move-wide/from16 v19, v12

    move-wide/from16 v24, v14

    goto :goto_5

    :cond_3
    move v1, v11

    move-wide/from16 v19, v12

    int-to-double v11, v7

    add-int/lit8 v8, v4, 0x1

    move-wide/from16 v24, v14

    int-to-double v13, v8

    .line 24
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-long v11, v11

    rem-long v11, v9, v11

    cmp-long v8, v11, v17

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_5

    goto :goto_7

    :cond_5
    move/from16 v22, v1

    move/from16 v1, v21

    move-object/from16 v26, v23

    goto :goto_8

    :cond_6
    move v1, v11

    move-wide/from16 v19, v12

    move-wide/from16 v24, v14

    .line 25
    :goto_7
    iget-object v8, v0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lk/b/i/b/g/a;

    .line 26
    invoke-virtual/range {v23 .. v23}, Lk/b/i/b/g/w;->a()Lk/b/i/b/g/k;

    move-result-object v13

    move-object/from16 v14, v23

    .line 27
    iget v15, v14, Lk/b/i/b/g/w;->b:I

    move/from16 v22, v1

    .line 28
    iget v1, v14, Lk/b/i/b/g/w;->c:I

    shl-int v23, v16, v15

    move-object/from16 v26, v14

    add-int/lit8 v14, v23, -0x1

    .line 29
    invoke-direct {v12, v13, v15, v1, v14}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/k;III)V

    invoke-virtual {v12, v2, v3, v5}, Lk/b/i/b/g/a;->a([B[BLk/b/i/b/g/j;)V

    .line 30
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, v21

    :goto_8
    const-wide/16 v11, 0x0

    if-ge v6, v1, :cond_9

    cmp-long v6, v9, v11

    if-nez v6, :cond_7

    goto :goto_9

    :cond_7
    const-wide/16 v13, 0x1

    add-long v17, v9, v13

    int-to-double v13, v7

    int-to-double v11, v4

    .line 31
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-long v11, v11

    rem-long v17, v17, v11

    const-wide/16 v11, 0x0

    cmp-long v6, v17, v11

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_a

    :cond_8
    :goto_9
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_9

    .line 32
    invoke-virtual {v0, v4, v2, v3, v5}, Lk/b/i/b/g/b;->a(I[B[BLk/b/i/b/g/j;)Lk/b/i/b/g/a;

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v21, v1

    move-wide/from16 v12, v19

    move/from16 v11, v22

    move-wide/from16 v14, v24

    move-object/from16 v23, v26

    const/4 v8, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_a
    const-wide/16 v11, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v9, v4

    move-object/from16 v1, p1

    move-wide v5, v4

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public a(I[B[BLk/b/i/b/g/j;)Lk/b/i/b/g/a;
    .locals 3

    iget-object v0, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/a;

    if-eqz p1, :cond_0

    .line 5
    new-instance v2, Lk/b/i/b/g/a;

    invoke-direct {v2, p1, p2, p3, p4}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/a;[B[BLk/b/i/b/g/j;)V

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public a(Lk/b/a/o;)Lk/b/i/b/g/b;
    .locals 6

    new-instance v0, Lk/b/i/b/g/b;

    iget-wide v1, p0, Lk/b/i/b/g/b;->y:J

    invoke-direct {v0, v1, v2}, Lk/b/i/b/g/b;-><init>(J)V

    iget-object v1, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    iget-object v4, p0, Lk/b/i/b/g/b;->x:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/a;

    if-eqz v4, :cond_0

    .line 8
    new-instance v5, Lk/b/i/b/g/a;

    invoke-direct {v5, v4, p1}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/a;Lk/b/a/o;)V

    .line 9
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_1
    return-object v0
.end method
