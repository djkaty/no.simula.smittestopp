.class public final Le/c/a/a/d/c/o;
.super Le/c/a/a/d/c/v;
.source "SourceFile"


# instance fields
.field public final z:Le/c/a/a/d/c/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;Ljava/lang/String;Le/c/a/a/b/j/d;)V
    .locals 0
    .param p6    # Le/c/a/a/b/j/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Le/c/a/a/d/c/v;-><init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;Ljava/lang/String;Le/c/a/a/b/j/d;)V

    new-instance p2, Le/c/a/a/d/c/i;

    iget-object p3, p0, Le/c/a/a/d/c/v;->y:Le/c/a/a/d/c/w;

    invoke-direct {p2, p1, p3}, Le/c/a/a/d/c/i;-><init>(Landroid/content/Context;Le/c/a/a/d/c/w;)V

    iput-object p2, p0, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/d/c/q;Le/c/a/a/b/i/k/f;Le/c/a/a/d/c/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/d/c/q;",
            "Le/c/a/a/b/i/k/f<",
            "Le/c/a/a/e/b;",
            ">;",
            "Le/c/a/a/d/c/d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    .line 1
    iget-object v2, v1, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v2}, Le/c/a/a/d/c/w;->a()V

    invoke-virtual {v1, p2}, Le/c/a/a/d/c/i;->a(Le/c/a/a/b/i/k/f;)Le/c/a/a/d/c/j;

    move-result-object p2

    iget-object v1, v1, Le/c/a/a/d/c/i;->a:Le/c/a/a/d/c/w;

    invoke-virtual {v1}, Le/c/a/a/d/c/w;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Le/c/a/a/d/c/g;

    new-instance v9, Le/c/a/a/d/c/s;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v8, p2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Le/c/a/a/d/c/s;-><init>(ILe/c/a/a/d/c/q;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v1, v9}, Le/c/a/a/d/c/g;->a(Le/c/a/a/d/c/s;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    invoke-virtual {v1}, Le/c/a/a/d/c/i;->a()V

    iget-object v1, p0, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    invoke-virtual {v1}, Le/c/a/a/d/c/i;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Le/c/a/a/b/j/b;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
