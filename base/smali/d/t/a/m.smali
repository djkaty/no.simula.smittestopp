.class public final Ld/t/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/m$b;,
        Ld/t/a/m$c;
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ld/t/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public static C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ld/t/a/m$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/m$c;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s;",
            ">;"
        }
    .end annotation
.end field

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ld/t/a/m;->B:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ld/t/a/m$a;

    invoke-direct {v0}, Ld/t/a/m$a;-><init>()V

    sput-object v0, Ld/t/a/m;->C:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ld/t/a/s;IJ)Ld/t/a/s$x;
    .locals 5

    .line 54
    iget-object v0, p1, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v0}, Ld/t/a/b;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 55
    iget-object v3, p1, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v3, v2}, Ld/t/a/b;->d(I)Landroid/view/View;

    move-result-object v3

    .line 56
    invoke-static {v3}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v3

    .line 57
    iget v4, v3, Ld/t/a/s$x;->c:I

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Ld/t/a/s$x;->l()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_2
    iget-object v0, p1, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 59
    :try_start_0
    invoke-virtual {p1}, Ld/t/a/s;->m()V

    .line 60
    invoke-virtual {v0, p2, v1, p3, p4}, Ld/t/a/s$q;->a(IZJ)Ld/t/a/s$x;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 61
    invoke-virtual {p2}, Ld/t/a/s$x;->k()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ld/t/a/s$x;->l()Z

    move-result p3

    if-nez p3, :cond_3

    .line 62
    iget-object p3, p2, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {v0, p3}, Ld/t/a/s$q;->a(Landroid/view/View;)V

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v0, p2, v1}, Ld/t/a/s$q;->a(Ld/t/a/s$x;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Ld/t/a/s;->a(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Ld/t/a/s;->a(Z)V

    throw p2
.end method

.method public a(J)V
    .locals 13

    .line 1
    iget-object v0, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v0, :cond_2

    .line 2
    iget-object v5, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/t/a/s;

    .line 3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    iget-object v6, v5, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 5
    iput v1, v6, Ld/t/a/m$b;->d:I

    .line 6
    iget-object v6, v6, Ld/t/a/m$b;->c:[I

    if-eqz v6, :cond_0

    .line 7
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([II)V

    .line 8
    :cond_0
    iget-object v4, v5, Ld/t/a/s;->B0:Ld/t/a/m$b;

    iget v4, v4, Ld/t/a/m$b;->d:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v2, v0, :cond_7

    .line 10
    iget-object v6, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/t/a/s;

    .line 11
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_5

    .line 12
    :cond_3
    iget-object v7, v6, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 13
    iget v8, v7, Ld/t/a/m$b;->a:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v7, Ld/t/a/m$b;->b:I

    .line 14
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v8

    const/4 v8, 0x0

    .line 15
    :goto_2
    iget v10, v7, Ld/t/a/m$b;->d:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_6

    .line 16
    iget-object v10, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v3, v10, :cond_4

    .line 17
    new-instance v10, Ld/t/a/m$c;

    invoke-direct {v10}, Ld/t/a/m$c;-><init>()V

    .line 18
    iget-object v11, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_4
    iget-object v10, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/t/a/m$c;

    .line 20
    :goto_3
    iget-object v11, v7, Ld/t/a/m$b;->c:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v12

    if-gt v11, v9, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 21
    :goto_4
    iput-boolean v12, v10, Ld/t/a/m$c;->a:Z

    .line 22
    iput v9, v10, Ld/t/a/m$c;->b:I

    .line 23
    iput v11, v10, Ld/t/a/m$c;->c:I

    .line 24
    iput-object v6, v10, Ld/t/a/m$c;->d:Ld/t/a/s;

    .line 25
    iget-object v11, v7, Ld/t/a/m$b;->c:[I

    aget v11, v11, v8

    iput v11, v10, Ld/t/a/m$c;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_7
    iget-object v0, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    sget-object v2, Ld/t/a/m;->C:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 27
    :goto_6
    iget-object v2, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 28
    iget-object v2, p0, Ld/t/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/t/a/m$c;

    .line 29
    iget-object v3, v2, Ld/t/a/m$c;->d:Ld/t/a/s;

    if-nez v3, :cond_8

    goto/16 :goto_9

    .line 30
    :cond_8
    iget-boolean v3, v2, Ld/t/a/m$c;->a:Z

    if-eqz v3, :cond_9

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_7

    :cond_9
    move-wide v6, p1

    .line 31
    :goto_7
    iget-object v3, v2, Ld/t/a/m$c;->d:Ld/t/a/s;

    iget v8, v2, Ld/t/a/m$c;->e:I

    invoke-virtual {p0, v3, v8, v6, v7}, Ld/t/a/m;->a(Ld/t/a/s;IJ)Ld/t/a/s$x;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    .line 32
    iget-object v7, v3, Ld/t/a/s$x;->b:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_e

    .line 33
    invoke-virtual {v3}, Ld/t/a/s$x;->k()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 34
    invoke-virtual {v3}, Ld/t/a/s$x;->l()Z

    move-result v7

    if-nez v7, :cond_e

    .line 35
    iget-object v3, v3, Ld/t/a/s$x;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/t/a/s;

    if-nez v3, :cond_a

    goto :goto_8

    .line 36
    :cond_a
    iget-boolean v7, v3, Ld/t/a/s;->b0:Z

    if-eqz v7, :cond_b

    iget-object v7, v3, Ld/t/a/s;->B:Ld/t/a/b;

    .line 37
    invoke-virtual {v7}, Ld/t/a/b;->b()I

    move-result v7

    if-eqz v7, :cond_b

    .line 38
    invoke-virtual {v3}, Ld/t/a/s;->o()V

    .line 39
    :cond_b
    iget-object v7, v3, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 40
    iput v1, v7, Ld/t/a/m$b;->d:I

    .line 41
    iget-object v8, v7, Ld/t/a/m$b;->c:[I

    if-eqz v8, :cond_c

    .line 42
    invoke-static {v8, v4}, Ljava/util/Arrays;->fill([II)V

    .line 43
    :cond_c
    iget v7, v7, Ld/t/a/m$b;->d:I

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    :try_start_0
    const-string p1, "RV Nested Prefetch"

    .line 44
    invoke-static {p1}, Ld/i/e/b;->a(Ljava/lang/String;)V

    .line 45
    iget-object p1, v3, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 46
    iput v5, p1, Ld/t/a/s$u;->d:I

    .line 47
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-static {}, Ld/i/e/b;->a()V

    throw p1

    .line 49
    :cond_e
    :goto_8
    iput-boolean v1, v2, Ld/t/a/m$c;->a:Z

    .line 50
    iput v1, v2, Ld/t/a/m$c;->b:I

    .line 51
    iput v1, v2, Ld/t/a/m$c;->c:I

    .line 52
    iput-object v6, v2, Ld/t/a/m$c;->d:Ld/t/a/s;

    .line 53
    iput v1, v2, Ld/t/a/m$c;->e:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_f
    :goto_9
    return-void
.end method

.method public a(Ld/t/a/s;II)V
    .locals 5

    .line 65
    iget-boolean v0, p1, Ld/t/a/s;->N:Z

    if-eqz v0, :cond_0

    .line 66
    iget-wide v0, p0, Ld/t/a/m;->y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {p1}, Ld/t/a/s;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ld/t/a/m;->y:J

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    iget-object p1, p1, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 70
    iput p2, p1, Ld/t/a/m$b;->a:I

    .line 71
    iput p3, p1, Ld/t/a/m$b;->b:I

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    .line 1
    invoke-static {v2}, Ld/i/e/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    iput-wide v0, p0, Ld/t/a/m;->y:J

    .line 4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 6
    iget-object v6, p0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/t/a/s;

    .line 7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    .line 9
    iput-wide v0, p0, Ld/t/a/m;->y:J

    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 11
    :cond_3
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Ld/t/a/m;->z:J

    add-long/2addr v2, v4

    .line 12
    invoke-virtual {p0, v2, v3}, Ld/t/a/m;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iput-wide v0, p0, Ld/t/a/m;->y:J

    .line 14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    .line 15
    iput-wide v0, p0, Ld/t/a/m;->y:J

    .line 16
    invoke-static {}, Ld/i/e/b;->a()V

    throw v2
.end method
