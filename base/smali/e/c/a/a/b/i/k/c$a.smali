.class public final Le/c/a/a/b/i/k/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/d$a;
.implements Le/c/a/a/b/i/d$b;
.implements Le/c/a/a/b/i/k/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/i/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Le/c/a/a/b/i/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Le/c/a/a/b/i/d$a;",
        "Le/c/a/a/b/i/d$b;",
        "Le/c/a/a/b/i/k/l0;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le/c/a/a/b/i/k/m;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/c/a/a/b/i/a$f;

.field public final c:Le/c/a/a/b/i/a$b;

.field public final d:Le/c/a/a/b/i/k/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/h0<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:Le/c/a/a/b/i/k/i;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/c/a/a/b/i/k/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/c/a/a/b/i/k/f$a<",
            "*>;",
            "Le/c/a/a/b/i/k/v;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Le/c/a/a/b/i/k/x;

.field public j:Z

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/a/a/b/i/k/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public l:Le/c/a/a/b/a;

.field public final synthetic m:Le/c/a/a/b/i/k/c;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/c;Le/c/a/a/b/i/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/c<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->f:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->l:Le/c/a/a/b/a;

    .line 7
    iget-object v1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 9
    invoke-virtual {p2}, Le/c/a/a/b/i/c;->a()Le/c/a/a/b/j/d$a;

    move-result-object v1

    invoke-virtual {v1}, Le/c/a/a/b/j/d$a;->a()Le/c/a/a/b/j/d;

    move-result-object v5

    .line 10
    iget-object v1, p2, Le/c/a/a/b/i/c;->b:Le/c/a/a/b/i/a;

    .line 11
    iget-object v2, v1, Le/c/a/a/b/i/a;->a:Le/c/a/a/b/i/a$a;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v2, v3}, Ld/b/a/r;->a(ZLjava/lang/Object;)V

    .line 12
    iget-object v2, v1, Le/c/a/a/b/i/a;->a:Le/c/a/a/b/i/a$a;

    .line 13
    iget-object v3, p2, Le/c/a/a/b/i/c;->a:Landroid/content/Context;

    iget-object v6, p2, Le/c/a/a/b/i/c;->c:Le/c/a/a/b/i/a$d;

    move-object v7, p0

    move-object v8, p0

    .line 14
    invoke-virtual/range {v2 .. v8}, Le/c/a/a/b/i/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/d;Ljava/lang/Object;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)Le/c/a/a/b/i/a$f;

    move-result-object v1

    .line 15
    iput-object v1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    .line 16
    instance-of v2, v1, Le/c/a/a/b/j/r;

    if-eqz v2, :cond_2

    .line 17
    check-cast v1, Le/c/a/a/b/j/r;

    if-eqz v1, :cond_1

    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->c:Le/c/a/a/b/i/a$b;

    goto :goto_1

    .line 18
    :cond_1
    throw v0

    .line 19
    :cond_2
    iput-object v1, p0, Le/c/a/a/b/i/k/c$a;->c:Le/c/a/a/b/i/a$b;

    .line 20
    :goto_1
    iget-object v1, p2, Le/c/a/a/b/i/c;->d:Le/c/a/a/b/i/k/h0;

    .line 21
    iput-object v1, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    .line 22
    new-instance v1, Le/c/a/a/b/i/k/i;

    invoke-direct {v1}, Le/c/a/a/b/i/k/i;-><init>()V

    iput-object v1, p0, Le/c/a/a/b/i/k/c$a;->e:Le/c/a/a/b/i/k/i;

    .line 23
    iget v1, p2, Le/c/a/a/b/i/c;->e:I

    .line 24
    iput v1, p0, Le/c/a/a/b/i/k/c$a;->h:I

    .line 25
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v1}, Le/c/a/a/b/i/a$f;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    iget-object v0, p1, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    .line 27
    iget-object p1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 28
    new-instance v1, Le/c/a/a/b/i/k/x;

    invoke-virtual {p2}, Le/c/a/a/b/i/c;->a()Le/c/a/a/b/j/d$a;

    move-result-object p2

    invoke-virtual {p2}, Le/c/a/a/b/j/d$a;->a()Le/c/a/a/b/j/d;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Le/c/a/a/b/i/k/x;-><init>(Landroid/content/Context;Landroid/os/Handler;Le/c/a/a/b/j/d;)V

    .line 29
    iput-object v1, p0, Le/c/a/a/b/i/k/c$a;->i:Le/c/a/a/b/i/k/x;

    return-void

    .line 30
    :cond_3
    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->i:Le/c/a/a/b/i/k/x;

    return-void
.end method


# virtual methods
.method public final a([Le/c/a/a/b/c;)Le/c/a/a/b/c;
    .locals 9

    if-eqz p1, :cond_5

    .line 111
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 112
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    .line 113
    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->b()[Le/c/a/a/b/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Le/c/a/a/b/c;

    .line 114
    :cond_1
    new-instance v2, Ld/f/a;

    array-length v3, v0

    invoke-direct {v2, v3}, Ld/f/a;-><init>(I)V

    .line 115
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 116
    iget-object v6, v5, Le/c/a/a/b/c;->x:Ljava/lang/String;

    .line 117
    invoke-virtual {v5}, Le/c/a/a/b/c;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_2
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 119
    iget-object v4, v3, Le/c/a/a/b/c;->x:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v4}, Ld/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    iget-object v4, v3, Le/c/a/a/b/c;->x:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v4}, Ld/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Le/c/a/a/b/c;->b()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 10

    .line 74
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 75
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 76
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 77
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->c()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 78
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 79
    iget-object v1, v0, Le/c/a/a/b/i/k/c;->f:Le/c/a/a/b/j/j;

    .line 80
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    .line 81
    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 82
    invoke-static {v0}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {v2}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v2}, Le/c/a/a/b/i/a$f;->h()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_2

    .line 85
    :cond_1
    invoke-interface {v2}, Le/c/a/a/b/i/a$f;->i()I

    move-result v2

    .line 86
    iget-object v4, v1, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 87
    :goto_0
    iget-object v8, v1, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 88
    iget-object v8, v1, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    if-le v8, v2, :cond_3

    .line 89
    iget-object v9, v1, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_1
    if-ne v5, v6, :cond_5

    .line 90
    iget-object v4, v1, Le/c/a/a/b/j/j;->b:Le/c/a/a/b/e;

    invoke-virtual {v4, v0, v2}, Le/c/a/a/b/e;->a(Landroid/content/Context;I)I

    move-result v0

    move v5, v0

    .line 91
    :cond_5
    iget-object v0, v1, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v5, :cond_6

    .line 92
    new-instance v0, Le/c/a/a/b/a;

    invoke-direct {v0, v5, v3}, Le/c/a/a/b/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 93
    invoke-virtual {p0, v0}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/a;)V

    return-void

    .line 94
    :cond_6
    new-instance v0, Le/c/a/a/b/i/k/c$c;

    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    iget-object v3, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-direct {v0, v1, v2, v3}, Le/c/a/a/b/i/k/c$c;-><init>(Le/c/a/a/b/i/k/c;Le/c/a/a/b/i/a$f;Le/c/a/a/b/i/k/h0;)V

    .line 95
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v1}, Le/c/a/a/b/i/a$f;->g()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 96
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->i:Le/c/a/a/b/i/k/x;

    .line 97
    iget-object v2, v1, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    if-eqz v2, :cond_7

    .line 98
    invoke-interface {v2}, Le/c/a/a/b/i/a$f;->e()V

    .line 99
    :cond_7
    iget-object v2, v1, Le/c/a/a/b/i/k/x;->e:Le/c/a/a/b/j/d;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 100
    iput-object v3, v2, Le/c/a/a/b/j/d;->h:Ljava/lang/Integer;

    .line 101
    iget-object v2, v1, Le/c/a/a/b/i/k/x;->c:Le/c/a/a/b/i/a$a;

    iget-object v3, v1, Le/c/a/a/b/i/k/x;->a:Landroid/content/Context;

    iget-object v4, v1, Le/c/a/a/b/i/k/x;->b:Landroid/os/Handler;

    .line 102
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v1, Le/c/a/a/b/i/k/x;->e:Le/c/a/a/b/j/d;

    .line 103
    iget-object v6, v5, Le/c/a/a/b/j/d;->g:Le/c/a/a/f/a;

    move-object v7, v1

    move-object v8, v1

    .line 104
    invoke-virtual/range {v2 .. v8}, Le/c/a/a/b/i/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/d;Ljava/lang/Object;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)Le/c/a/a/b/i/a$f;

    move-result-object v2

    check-cast v2, Le/c/a/a/f/f;

    iput-object v2, v1, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    .line 105
    iput-object v0, v1, Le/c/a/a/b/i/k/x;->g:Le/c/a/a/b/i/k/a0;

    .line 106
    iget-object v2, v1, Le/c/a/a/b/i/k/x;->d:Ljava/util/Set;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 107
    :cond_8
    iget-object v1, v1, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    invoke-interface {v1}, Le/c/a/a/f/f;->f()V

    goto :goto_4

    .line 108
    :cond_9
    :goto_3
    iget-object v2, v1, Le/c/a/a/b/i/k/x;->b:Landroid/os/Handler;

    new-instance v3, Le/c/a/a/b/i/k/y;

    invoke-direct {v3, v1}, Le/c/a/a/b/i/k/y;-><init>(Le/c/a/a/b/i/k/x;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_a
    :goto_4
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v1, v0}, Le/c/a/a/b/i/a$f;->a(Le/c/a/a/b/j/b$c;)V

    return-void

    .line 110
    :cond_b
    throw v3

    :cond_c
    :goto_5
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 9
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->d()V

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 13
    iget-object p1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 14
    new-instance v0, Le/c/a/a/b/i/k/p;

    invoke-direct {v0, p0}, Le/c/a/a/b/i/k/p;-><init>(Le/c/a/a/b/i/k/c$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->c()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 6
    iget-object p1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 7
    new-instance v0, Le/c/a/a/b/i/k/o;

    invoke-direct {v0, p0}, Le/c/a/a/b/i/k/o;-><init>(Le/c/a/a/b/i/k/c$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 58
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 59
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 60
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 61
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/b/i/k/m;

    .line 62
    check-cast v1, Le/c/a/a/b/i/k/e0;

    .line 63
    iget-object v1, v1, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    new-instance v2, Le/c/a/a/b/i/b;

    invoke-direct {v2, p1}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 64
    iget-object v1, v1, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {v1, v2}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Le/c/a/a/b/a;)V
    .locals 4

    .line 15
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 16
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 17
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 18
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->i:Le/c/a/a/b/i/k/x;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v0, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->e()V

    .line 21
    :cond_0
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->g()V

    .line 22
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 23
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->f:Le/c/a/a/b/j/j;

    .line 24
    iget-object v0, v0, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 25
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->c(Le/c/a/a/b/a;)V

    .line 26
    iget v0, p1, Le/c/a/a/b/a;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 27
    sget-object p1, Le/c/a/a/b/i/k/c;->o:Lcom/google/android/gms/common/api/Status;

    .line 28
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iput-object p1, p0, Le/c/a/a/b/i/k/c$a;->l:Le/c/a/a/b/a;

    return-void

    .line 31
    :cond_2
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->b(Le/c/a/a/b/a;)Z

    .line 32
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    iget v1, p0, Le/c/a/a/b/i/k/c$a;->h:I

    invoke-virtual {v0, p1, v1}, Le/c/a/a/b/i/k/c;->a(Le/c/a/a/b/a;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 33
    iget p1, p1, Le/c/a/a/b/a;->y:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Le/c/a/a/b/i/k/c$a;->j:Z

    .line 35
    :cond_3
    iget-boolean p1, p0, Le/c/a/a/b/i/k/c$a;->j:Z

    if-eqz p1, :cond_4

    .line 36
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 37
    iget-object p1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 38
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 39
    iget-wide v1, v1, Le/c/a/a/b/i/k/c;->a:J

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 41
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    .line 42
    iget-object v1, v1, Le/c/a/a/b/i/k/h0;->c:Le/c/a/a/b/i/a;

    .line 43
    iget-object v1, v1, Le/c/a/a/b/i/a;->b:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_5
    return-void
.end method

.method public final a(Le/c/a/a/b/i/k/m;)V
    .locals 1

    .line 46
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 47
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 48
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 49
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->b(Le/c/a/a/b/i/k/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->i()V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->l:Le/c/a/a/b/a;

    if-eqz p1, :cond_3

    .line 55
    iget v0, p1, Le/c/a/a/b/a;->y:I

    if-eqz v0, :cond_2

    iget-object p1, p1, Le/c/a/a/b/a;->z:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->l:Le/c/a/a/b/a;

    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/a;)V

    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->a()V

    return-void
.end method

.method public final a(Z)Z
    .locals 4

    .line 66
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 67
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 68
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 69
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 70
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->e:Le/c/a/a/b/i/k/i;

    .line 71
    iget-object v2, v0, Le/c/a/a/b/i/k/i;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Le/c/a/a/b/i/k/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->i()V

    :cond_2
    return v1

    .line 73
    :cond_3
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {p1}, Le/c/a/a/b/i/a$f;->e()V

    return v3

    :cond_4
    return v1
.end method

.method public final b()Z
    .locals 1

    .line 39
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->g()Z

    move-result v0

    return v0
.end method

.method public final b(Le/c/a/a/b/a;)Z
    .locals 1

    .line 35
    sget-object p1, Le/c/a/a/b/i/k/c;->p:Ljava/lang/Object;

    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Le/c/a/a/b/i/k/m;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Le/c/a/a/b/i/k/w;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->c(Le/c/a/a/b/i/k/m;)V

    return v1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Le/c/a/a/b/i/k/w;

    .line 4
    invoke-virtual {v0, p0}, Le/c/a/a/b/i/k/w;->b(Le/c/a/a/b/i/k/c$a;)[Le/c/a/a/b/c;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/c/a/a/b/i/k/c$a;->a([Le/c/a/a/b/c;)Le/c/a/a/b/c;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->c(Le/c/a/a/b/i/k/m;)V

    return v1

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Le/c/a/a/b/i/k/w;->c(Le/c/a/a/b/i/k/c$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    new-instance p1, Le/c/a/a/b/i/k/c$b;

    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Le/c/a/a/b/i/k/c$b;-><init>(Le/c/a/a/b/i/k/h0;Le/c/a/a/b/c;Le/c/a/a/b/i/k/n;)V

    .line 8
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    .line 9
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/c$b;

    .line 10
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 11
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 14
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 15
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 16
    iget-wide v1, v1, Le/c/a/a/b/i/k/c;->a:J

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 20
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 21
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 22
    iget-wide v3, v3, Le/c/a/a/b/i/k/c;->a:J

    .line 23
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 25
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 26
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 27
    iget-wide v2, v2, Le/c/a/a/b/i/k/c;->b:J

    .line 28
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 29
    new-instance p1, Le/c/a/a/b/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Le/c/a/a/b/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 30
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->b(Le/c/a/a/b/a;)Z

    .line 31
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    iget v1, p0, Le/c/a/a/b/i/k/c$a;->h:I

    invoke-virtual {v0, p1, v1}, Le/c/a/a/b/i/k/c;->a(Le/c/a/a/b/a;I)Z

    goto :goto_0

    .line 32
    :cond_3
    new-instance p1, Le/c/a/a/b/i/j;

    invoke-direct {p1, v2}, Le/c/a/a/b/i/j;-><init>(Le/c/a/a/b/c;)V

    check-cast v0, Le/c/a/a/b/i/k/e0;

    .line 33
    iget-object v0, v0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    .line 34
    iget-object v0, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {v0, p1}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->g()V

    .line 2
    sget-object v0, Le/c/a/a/b/a;->B:Le/c/a/a/b/a;

    invoke-virtual {p0, v0}, Le/c/a/a/b/i/k/c$a;->c(Le/c/a/a/b/a;)V

    .line 3
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->h()V

    .line 4
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/b/i/k/v;

    .line 7
    iget-object v2, v1, Le/c/a/a/b/i/k/v;->a:Le/c/a/a/b/i/k/g;

    .line 8
    iget-object v2, v2, Le/c/a/a/b/i/k/g;->b:[Le/c/a/a/b/c;

    .line 9
    invoke-virtual {p0, v2}, Le/c/a/a/b/i/k/c$a;->a([Le/c/a/a/b/c;)Le/c/a/a/b/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, v1, Le/c/a/a/b/i/k/v;->a:Le/c/a/a/b/i/k/g;

    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->c:Le/c/a/a/b/i/a$b;

    new-instance v3, Le/c/a/a/g/b;

    invoke-direct {v3}, Le/c/a/a/g/b;-><init>()V

    check-cast v1, Le/c/a/a/e/l;

    if-eqz v1, :cond_1

    .line 12
    check-cast v2, Le/c/a/a/d/c/o;

    new-instance v4, Le/c/a/a/e/a$a;

    invoke-direct {v4, v3}, Le/c/a/a/e/a$a;-><init>(Le/c/a/a/g/b;)V

    iget-object v3, v1, Le/c/a/a/e/l;->d:Le/c/a/a/d/c/q;

    iget-object v1, v1, Le/c/a/a/e/l;->e:Le/c/a/a/b/i/k/f;

    invoke-virtual {v2, v3, v1, v4}, Le/c/a/a/d/c/o;->a(Le/c/a/a/d/c/q;Le/c/a/a/b/i/k/f;Le/c/a/a/d/c/d;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    throw v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Le/c/a/a/b/i/k/c$a;->a(I)V

    .line 15
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->e()V

    .line 16
    :cond_2
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->e()V

    .line 17
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->i()V

    return-void
.end method

.method public final c(Le/c/a/a/b/a;)V
    .locals 2

    .line 22
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/i0;

    .line 23
    sget-object v1, Le/c/a/a/b/a;->B:Le/c/a/a/b/a;

    invoke-static {p1, v1}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {p1}, Le/c/a/a/b/i/a$f;->d()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 25
    throw p1

    .line 26
    :cond_1
    throw p1

    .line 27
    :cond_2
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final c(Le/c/a/a/b/i/k/m;)V
    .locals 2

    .line 18
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->e:Le/c/a/a/b/i/k/i;

    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->b()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Le/c/a/a/b/i/k/m;->a(Le/c/a/a/b/i/k/i;Z)V

    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Le/c/a/a/b/i/k/m;->a(Le/c/a/a/b/i/k/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c$a;->a(I)V

    .line 21
    iget-object p1, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {p1}, Le/c/a/a/b/i/a$f;->e()V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/c/a/a/b/i/k/c$a;->g()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/c/a/a/b/i/k/c$a;->j:Z

    .line 3
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->e:Le/c/a/a/b/i/k/i;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Le/c/a/a/b/i/k/c0;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0, v2}, Le/c/a/a/b/i/k/i;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 5
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 6
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 7
    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 8
    iget-wide v2, v2, Le/c/a/a/b/i/k/c;->a:J

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 11
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 12
    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 13
    iget-wide v2, v2, Le/c/a/a/b/i/k/c;->b:J

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 16
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->f:Le/c/a/a/b/j/j;

    .line 17
    iget-object v0, v0, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 18
    throw v0
.end method

.method public final e()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Le/c/a/a/b/i/k/m;

    .line 2
    iget-object v4, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v4}, Le/c/a/a/b/i/a$f;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Le/c/a/a/b/i/k/c$a;->b(Le/c/a/a/b/i/k/m;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 4
    sget-object v0, Le/c/a/a/b/i/k/c;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Le/c/a/a/b/i/k/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->e:Le/c/a/a/b/i/k/i;

    if-eqz v0, :cond_2

    .line 6
    sget-object v1, Le/c/a/a/b/i/k/c;->n:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/c/a/a/b/i/k/i;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 7
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Le/c/a/a/b/i/k/f$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/a/a/b/i/k/f$a;

    .line 9
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 10
    new-instance v4, Le/c/a/a/b/i/k/g0;

    new-instance v5, Le/c/a/a/g/b;

    invoke-direct {v5}, Le/c/a/a/g/b;-><init>()V

    invoke-direct {v4, v3, v5}, Le/c/a/a/b/i/k/g0;-><init>(Le/c/a/a/b/i/k/f$a;Le/c/a/a/g/b;)V

    invoke-virtual {p0, v4}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/i/k/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Le/c/a/a/b/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Le/c/a/a/b/a;-><init>(I)V

    invoke-virtual {p0, v0}, Le/c/a/a/b/i/k/c$a;->c(Le/c/a/a/b/a;)V

    .line 12
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    new-instance v1, Le/c/a/a/b/i/k/q;

    invoke-direct {v1, p0}, Le/c/a/a/b/i/k/q;-><init>(Le/c/a/a/b/i/k/c$a;)V

    invoke-interface {v0, v1}, Le/c/a/a/b/i/a$f;->a(Le/c/a/a/b/j/b$e;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/c/a/a/b/i/k/c$a;->l:Le/c/a/a/b/a;

    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/c/a/a/b/i/k/c$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 3
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 4
    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 6
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 7
    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Le/c/a/a/b/i/k/c$a;->j:Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 5
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 6
    iget-object v1, p0, Le/c/a/a/b/i/k/c$a;->d:Le/c/a/a/b/i/k/h0;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 7
    iget-wide v2, v2, Le/c/a/a/b/i/k/c;->c:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
