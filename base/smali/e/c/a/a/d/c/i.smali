.class public final Le/c/a/a/d/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/c/a/a/d/c/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/d/c/w<",
            "Le/c/a/a/d/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/c/a/a/b/i/k/f$a<",
            "Ljava/lang/Object;",
            ">;",
            "Le/c/a/a/d/c/n;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/c/a/a/b/i/k/f$a<",
            "Ljava/lang/Object;",
            ">;",
            "Le/c/a/a/d/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/c/a/a/b/i/k/f$a<",
            "Le/c/a/a/e/b;",
            ">;",
            "Le/c/a/a/d/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/c/a/a/d/c/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/c/a/a/d/c/w<",
            "Le/c/a/a/d/c/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/a/a/d/c/i;->b:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/c/a/a/d/c/i;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/c/a/a/d/c/i;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    iput-object p2, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/b/i/k/f;)Le/c/a/a/d/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/f<",
            "Le/c/a/a/e/b;",
            ">;)",
            "Le/c/a/a/d/c/j;"
        }
    .end annotation

    iget-object v0, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    .line 3
    iget-object v2, p1, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/d/c/j;

    if-nez v1, :cond_0

    new-instance v1, Le/c/a/a/d/c/j;

    invoke-direct {v1, p1}, Le/c/a/a/d/c/j;-><init>(Le/c/a/a/b/i/k/f;)V

    :cond_0
    iget-object v2, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    .line 5
    iget-object p1, p1, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    .line 6
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 12

    iget-object v0, p0, Le/c/a/a/d/c/i;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/c/a/a/d/c/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/c/a/a/d/c/n;

    if-eqz v2, :cond_0

    iget-object v3, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v3}, Le/c/a/a/d/c/w;->b()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Le/c/a/a/d/c/g;

    .line 1
    new-instance v11, Le/c/a/a/d/c/s;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Le/c/a/a/d/c/s;-><init>(ILe/c/a/a/d/c/q;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2
    invoke-interface {v3, v11}, Le/c/a/a/d/c/g;->a(Le/c/a/a/d/c/s;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/c/a/a/d/c/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/c/a/a/d/c/j;

    if-eqz v2, :cond_2

    iget-object v4, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v4}, Le/c/a/a/d/c/w;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Le/c/a/a/d/c/g;

    invoke-static {v2, v3}, Le/c/a/a/d/c/s;->a(Le/c/a/a/e/r;Le/c/a/a/d/c/d;)Le/c/a/a/d/c/s;

    move-result-object v2

    invoke-interface {v4, v2}, Le/c/a/a/d/c/g;->a(Le/c/a/a/d/c/s;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Le/c/a/a/d/c/i;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Le/c/a/a/d/c/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/c/a/a/d/c/m;

    if-eqz v2, :cond_4

    iget-object v4, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v4}, Le/c/a/a/d/c/w;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Le/c/a/a/d/c/g;

    new-instance v5, Le/c/a/a/d/c/z;

    const/4 v6, 0x2

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v5, v6, v3, v2, v3}, Le/c/a/a/d/c/z;-><init>(ILe/c/a/a/d/c/x;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, Le/c/a/a/d/c/g;->a(Le/c/a/a/d/c/z;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Le/c/a/a/d/c/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final a(Le/c/a/a/b/i/k/f$a;Le/c/a/a/d/c/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/f$a<",
            "Le/c/a/a/e/b;",
            ">;",
            "Le/c/a/a/d/c/d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v0}, Le/c/a/a/d/c/w;->a()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/c/a/a/d/c/i;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/d/c/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/c/a/a/d/c/j;->c()V

    iget-object v1, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v1}, Le/c/a/a/d/c/w;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Le/c/a/a/d/c/g;

    invoke-static {p1, p2}, Le/c/a/a/d/c/s;->a(Le/c/a/a/e/r;Le/c/a/a/d/c/d;)Le/c/a/a/d/c/s;

    move-result-object p1

    invoke-interface {v1, p1}, Le/c/a/a/d/c/g;->a(Le/c/a/a/d/c/s;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Le/c/a/a/d/c/i;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v1}, Le/c/a/a/d/c/w;->a()V

    iget-object v1, p0, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v1}, Le/c/a/a/d/c/w;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Le/c/a/a/d/c/g;

    invoke-interface {v1, v0}, Le/c/a/a/d/c/g;->a(Z)V

    iput-boolean v0, p0, Le/c/a/a/d/c/i;->b:Z

    :cond_0
    return-void
.end method
