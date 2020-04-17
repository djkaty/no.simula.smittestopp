.class public Lk/b/i/a/f;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:[B

.field public B:[[B

.field public C:[B

.field public D:[B

.field public E:[Lk/b/i/b/d/a;

.field public x:Lk/b/a/l;

.field public y:Lk/b/a/o;

.field public z:[[B


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lk/b/a/n;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    instance-of v3, v3, Lk/b/a/l;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v3

    iput-object v3, v0, Lk/b/i/a/f;->x:Lk/b/a/l;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/o;->a(Ljava/lang/Object;)Lk/b/a/o;

    move-result-object v3

    iput-object v3, v0, Lk/b/i/a/f;->y:Lk/b/a/o;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v4

    check-cast v4, Lk/b/a/u;

    invoke-virtual {v4}, Lk/b/a/u;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, v0, Lk/b/i/a/f;->z:[[B

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Lk/b/a/u;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lk/b/i/a/f;->z:[[B

    invoke-virtual {v4, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v7

    check-cast v7, Lk/b/a/p;

    invoke-virtual {v7}, Lk/b/a/p;->j()[B

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    check-cast v5, Lk/b/a/u;

    invoke-virtual {v5, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    check-cast v5, Lk/b/a/p;

    invoke-virtual {v5}, Lk/b/a/p;->j()[B

    move-result-object v5

    iput-object v5, v0, Lk/b/i/a/f;->A:[B

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v6

    check-cast v6, Lk/b/a/u;

    invoke-virtual {v6}, Lk/b/a/u;->size()I

    move-result v7

    new-array v7, v7, [[B

    iput-object v7, v0, Lk/b/i/a/f;->B:[[B

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Lk/b/a/u;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, v0, Lk/b/i/a/f;->B:[[B

    invoke-virtual {v6, v7}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v9

    check-cast v9, Lk/b/a/p;

    invoke-virtual {v9}, Lk/b/a/p;->j()[B

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v6

    check-cast v6, Lk/b/a/u;

    invoke-virtual {v6, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v6

    check-cast v6, Lk/b/a/p;

    invoke-virtual {v6}, Lk/b/a/p;->j()[B

    move-result-object v6

    iput-object v6, v0, Lk/b/i/a/f;->C:[B

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v6

    check-cast v6, Lk/b/a/u;

    invoke-virtual {v6, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v6

    check-cast v6, Lk/b/a/p;

    invoke-virtual {v6}, Lk/b/a/p;->j()[B

    move-result-object v6

    iput-object v6, v0, Lk/b/i/a/f;->D:[B

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    check-cast v1, Lk/b/a/u;

    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v6

    new-array v6, v6, [[[[B

    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v7

    new-array v7, v7, [[[[B

    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v8

    new-array v8, v8, [[[B

    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v9

    new-array v9, v9, [[B

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v1, v10}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v11

    check-cast v11, Lk/b/a/u;

    invoke-virtual {v11, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v12

    check-cast v12, Lk/b/a/u;

    invoke-virtual {v12}, Lk/b/a/u;->size()I

    move-result v13

    new-array v13, v13, [[[B

    aput-object v13, v6, v10

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v12}, Lk/b/a/u;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual {v12, v13}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v14

    check-cast v14, Lk/b/a/u;

    aget-object v15, v6, v10

    invoke-virtual {v14}, Lk/b/a/u;->size()I

    move-result v2

    new-array v2, v2, [[B

    aput-object v2, v15, v13

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v14}, Lk/b/a/u;->size()I

    move-result v15

    if-ge v2, v15, :cond_3

    aget-object v15, v6, v10

    aget-object v15, v15, v13

    invoke-virtual {v14, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v17

    check-cast v17, Lk/b/a/p;

    invoke-virtual/range {v17 .. v17}, Lk/b/a/p;->j()[B

    move-result-object v17

    aput-object v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    check-cast v2, Lk/b/a/u;

    invoke-virtual {v2}, Lk/b/a/u;->size()I

    move-result v12

    new-array v12, v12, [[[B

    aput-object v12, v7, v10

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v2}, Lk/b/a/u;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-virtual {v2, v12}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v13

    check-cast v13, Lk/b/a/u;

    aget-object v14, v7, v10

    invoke-virtual {v13}, Lk/b/a/u;->size()I

    move-result v15

    new-array v15, v15, [[B

    aput-object v15, v14, v12

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v13}, Lk/b/a/u;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    aget-object v15, v7, v10

    aget-object v15, v15, v12

    invoke-virtual {v13, v14}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v17

    check-cast v17, Lk/b/a/p;

    invoke-virtual/range {v17 .. v17}, Lk/b/a/p;->j()[B

    move-result-object v17

    aput-object v17, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v11, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    check-cast v2, Lk/b/a/u;

    invoke-virtual {v2}, Lk/b/a/u;->size()I

    move-result v12

    new-array v12, v12, [[B

    aput-object v12, v8, v10

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v2}, Lk/b/a/u;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    aget-object v13, v8, v10

    invoke-virtual {v2, v12}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v14

    check-cast v14, Lk/b/a/p;

    invoke-virtual {v14}, Lk/b/a/p;->j()[B

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v11, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    check-cast v2, Lk/b/a/p;

    invoke-virtual {v2}, Lk/b/a/p;->j()[B

    move-result-object v2

    aput-object v2, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    iget-object v1, v0, Lk/b/i/a/f;->D:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    new-array v2, v1, [Lk/b/i/b/d/a;

    iput-object v2, v0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_9

    new-instance v3, Lk/b/i/b/d/a;

    iget-object v4, v0, Lk/b/i/a/f;->D:[B

    aget-byte v11, v4, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v12, v4, v5

    aget-object v4, v6, v2

    invoke-static {v4}, Lk/b/c/e/a;->a([[[B)[[[S

    move-result-object v13

    aget-object v4, v7, v2

    invoke-static {v4}, Lk/b/c/e/a;->a([[[B)[[[S

    move-result-object v14

    aget-object v4, v8, v2

    invoke-static {v4}, Lk/b/c/e/a;->b([[B)[[S

    move-result-object v15

    aget-object v4, v9, v2

    invoke-static {v4}, Lk/b/c/e/a;->c([B)[S

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lk/b/i/b/d/a;-><init>(BB[[[S[[[S[[S[S)V

    iget-object v4, v0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_9

    :cond_9
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lk/b/i/b/d/a;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/l;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lk/b/a/l;-><init>(J)V

    iput-object v0, p0, Lk/b/i/a/f;->x:Lk/b/a/l;

    invoke-static {p1}, Lk/b/c/e/a;->a([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/f;->z:[[B

    invoke-static {p2}, Lk/b/c/e/a;->b([S)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/f;->A:[B

    invoke-static {p3}, Lk/b/c/e/a;->a([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/f;->B:[[B

    invoke-static {p4}, Lk/b/c/e/a;->b([S)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/f;->C:[B

    .line 1
    array-length p1, p5

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_0
    array-length p3, p5

    if-ge p2, p3, :cond_0

    aget p3, p5, p2

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lk/b/i/a/f;->D:[B

    iput-object p6, p0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 13

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    .line 2
    iget-object v2, p0, Lk/b/i/a/f;->x:Lk/b/a/l;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lk/b/i/a/f;->y:Lk/b/a/o;

    :goto_0
    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 3
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lk/b/i/a/f;->z:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_1

    new-instance v6, Lk/b/a/a1;

    aget-object v5, v5, v4

    invoke-direct {v6, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lk/b/a/e1;

    invoke-direct {v4, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 5
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    .line 6
    new-instance v4, Lk/b/a/a1;

    iget-object v5, p0, Lk/b/i/a/f;->A:[B

    invoke-direct {v4, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v4, Lk/b/a/e1;

    invoke-direct {v4, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 7
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v4, 0x0

    .line 8
    :goto_2
    iget-object v5, p0, Lk/b/i/a/f;->B:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_2

    new-instance v6, Lk/b/a/a1;

    aget-object v5, v5, v4

    invoke-direct {v6, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Lk/b/a/e1;

    invoke-direct {v4, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 9
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    .line 10
    new-instance v4, Lk/b/a/a1;

    iget-object v5, p0, Lk/b/i/a/f;->C:[B

    invoke-direct {v4, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v4, Lk/b/a/e1;

    invoke-direct {v4, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 11
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    .line 12
    new-instance v4, Lk/b/a/a1;

    iget-object v5, p0, Lk/b/i/a/f;->D:[B

    invoke-direct {v4, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v4, Lk/b/a/e1;

    invoke-direct {v4, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 13
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v4, 0x0

    .line 14
    :goto_3
    iget-object v5, p0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    array-length v5, v5

    if-ge v4, v5, :cond_8

    new-instance v5, Lk/b/a/f;

    .line 15
    invoke-direct {v5, v1}, Lk/b/a/f;-><init>(I)V

    .line 16
    iget-object v6, p0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    aget-object v6, v6, v4

    .line 17
    iget-object v6, v6, Lk/b/i/b/d/a;->d:[[[S

    .line 18
    invoke-static {v6}, Lk/b/c/e/a;->a([[[S)[[[B

    move-result-object v6

    new-instance v7, Lk/b/a/f;

    .line 19
    invoke-direct {v7, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v8, 0x0

    .line 20
    :goto_4
    array-length v9, v6

    if-ge v8, v9, :cond_4

    new-instance v9, Lk/b/a/f;

    .line 21
    invoke-direct {v9, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v10, 0x0

    .line 22
    :goto_5
    aget-object v11, v6, v8

    array-length v11, v11

    if-ge v10, v11, :cond_3

    new-instance v11, Lk/b/a/a1;

    aget-object v12, v6, v8

    aget-object v12, v12, v10

    invoke-direct {v11, v12}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v9, v11}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_3
    new-instance v10, Lk/b/a/e1;

    invoke-direct {v10, v9}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v7, v10}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    new-instance v6, Lk/b/a/e1;

    invoke-direct {v6, v7}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v5, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v6, p0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    aget-object v6, v6, v4

    .line 23
    iget-object v6, v6, Lk/b/i/b/d/a;->e:[[[S

    .line 24
    invoke-static {v6}, Lk/b/c/e/a;->a([[[S)[[[B

    move-result-object v6

    new-instance v7, Lk/b/a/f;

    .line 25
    invoke-direct {v7, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v8, 0x0

    .line 26
    :goto_6
    array-length v9, v6

    if-ge v8, v9, :cond_6

    new-instance v9, Lk/b/a/f;

    .line 27
    invoke-direct {v9, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v10, 0x0

    .line 28
    :goto_7
    aget-object v11, v6, v8

    array-length v11, v11

    if-ge v10, v11, :cond_5

    new-instance v11, Lk/b/a/a1;

    aget-object v12, v6, v8

    aget-object v12, v12, v10

    invoke-direct {v11, v12}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v9, v11}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_5
    new-instance v10, Lk/b/a/e1;

    invoke-direct {v10, v9}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v7, v10}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    new-instance v6, Lk/b/a/e1;

    invoke-direct {v6, v7}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v5, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v6, p0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    aget-object v6, v6, v4

    .line 29
    iget-object v6, v6, Lk/b/i/b/d/a;->f:[[S

    .line 30
    invoke-static {v6}, Lk/b/c/e/a;->a([[S)[[B

    move-result-object v6

    new-instance v7, Lk/b/a/f;

    .line 31
    invoke-direct {v7, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v8, 0x0

    .line 32
    :goto_8
    array-length v9, v6

    if-ge v8, v9, :cond_7

    new-instance v9, Lk/b/a/a1;

    aget-object v10, v6, v8

    invoke-direct {v9, v10}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v7, v9}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    new-instance v6, Lk/b/a/e1;

    invoke-direct {v6, v7}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v5, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v6, Lk/b/a/a1;

    iget-object v7, p0, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    aget-object v7, v7, v4

    .line 33
    iget-object v7, v7, Lk/b/i/b/d/a;->g:[S

    .line 34
    invoke-static {v7}, Lk/b/c/e/a;->b([S)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v5, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v6, Lk/b/a/e1;

    invoke-direct {v6, v5}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v2, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
