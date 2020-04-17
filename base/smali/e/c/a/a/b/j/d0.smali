.class public final Le/c/a/a/b/j/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Le/c/a/a/b/j/i$a;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Le/c/a/a/b/j/c0;


# direct methods
.method public constructor <init>(Le/c/a/a/b/j/c0;Le/c/a/a/b/j/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/c/a/a/b/j/d0;->e:Le/c/a/a/b/j/i$a;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Le/c/a/a/b/j/d0;->a:Ljava/util/Set;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Le/c/a/a/b/j/d0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 p1, 0x3

    .line 1
    iput p1, p0, Le/c/a/a/b/j/d0;->b:I

    .line 2
    iget-object p1, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 3
    iget-object v0, p1, Le/c/a/a/b/j/c0;->f:Le/c/a/a/b/k/a;

    .line 4
    iget-object p1, p1, Le/c/a/a/b/j/c0;->d:Landroid/content/Context;

    .line 5
    iget-object v1, p0, Le/c/a/a/b/j/d0;->e:Le/c/a/a/b/j/i$a;

    .line 6
    invoke-virtual {v1}, Le/c/a/a/b/j/i$a;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Le/c/a/a/b/j/d0;->e:Le/c/a/a/b/j/i$a;

    .line 7
    iget v2, v2, Le/c/a/a/b/j/i$a;->d:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.google.android.gms"

    .line 10
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    :try_start_0
    invoke-static {p1}, Le/c/a/a/b/m/b;->b(Landroid/content/Context;)Le/c/a/a/b/m/a;

    move-result-object v6

    .line 12
    iget-object v6, v6, Le/c/a/a/b/m/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, 0x200000

    and-int/2addr v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "ConnectionTracker"

    const-string v0, "Attempted to bind to a service in a STOPPED package."

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 16
    :goto_2
    iput-boolean v4, p0, Le/c/a/a/b/j/d0;->c:Z

    if-eqz v4, :cond_3

    .line 17
    iget-object p1, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 18
    iget-object p1, p1, Le/c/a/a/b/j/c0;->e:Landroid/os/Handler;

    .line 19
    iget-object v0, p0, Le/c/a/a/b/j/d0;->e:Le/c/a/a/b/j/i$a;

    invoke-virtual {p1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 20
    iget-object v0, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 21
    iget-object v1, v0, Le/c/a/a/b/j/c0;->e:Landroid/os/Handler;

    .line 22
    iget-wide v2, v0, Le/c/a/a/b/j/c0;->h:J

    .line 23
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    const/4 p1, 0x2

    .line 24
    iput p1, p0, Le/c/a/a/b/j/d0;->b:I

    .line 25
    :try_start_1
    iget-object p1, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 26
    iget-object p1, p1, Le/c/a/a/b/j/c0;->f:Le/c/a/a/b/k/a;

    .line 27
    iget-object v0, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 28
    iget-object v0, v0, Le/c/a/a/b/j/c0;->d:Landroid/content/Context;

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_4
    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 30
    :cond_5
    throw v3
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/j/c0;->c:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 5
    iget-object v1, v1, Le/c/a/a/b/j/c0;->e:Landroid/os/Handler;

    .line 6
    iget-object v2, p0, Le/c/a/a/b/j/d0;->e:Le/c/a/a/b/j/i$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7
    iput-object p2, p0, Le/c/a/a/b/j/d0;->d:Landroid/os/IBinder;

    .line 8
    iput-object p1, p0, Le/c/a/a/b/j/d0;->f:Landroid/content/ComponentName;

    .line 9
    iget-object v1, p0, Le/c/a/a/b/j/d0;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 10
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 11
    :cond_0
    iput v3, p0, Le/c/a/a/b/j/d0;->b:I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/j/c0;->c:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Le/c/a/a/b/j/d0;->g:Le/c/a/a/b/j/c0;

    .line 5
    iget-object v1, v1, Le/c/a/a/b/j/c0;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Le/c/a/a/b/j/d0;->e:Le/c/a/a/b/j/i$a;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Le/c/a/a/b/j/d0;->d:Landroid/os/IBinder;

    .line 8
    iput-object p1, p0, Le/c/a/a/b/j/d0;->f:Landroid/content/ComponentName;

    .line 9
    iget-object v1, p0, Le/c/a/a/b/j/d0;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 10
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Le/c/a/a/b/j/d0;->b:I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
