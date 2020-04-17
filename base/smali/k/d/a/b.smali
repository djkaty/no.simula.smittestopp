.class public final Lk/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lk/d/a/l;


# instance fields
.field public final x:Lk/d/a/k;

.field public final y:Lk/d/a/c;

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lk/d/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/d/a/b;->y:Lk/d/a/c;

    .line 3
    new-instance p1, Lk/d/a/k;

    invoke-direct {p1}, Lk/d/a/k;-><init>()V

    iput-object p1, p0, Lk/d/a/b;->x:Lk/d/a/k;

    return-void
.end method


# virtual methods
.method public a(Lk/d/a/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lk/d/a/j;->a(Lk/d/a/q;Ljava/lang/Object;)Lk/d/a/j;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lk/d/a/b;->x:Lk/d/a/k;

    invoke-virtual {p2, p1}, Lk/d/a/k;->a(Lk/d/a/j;)V

    .line 4
    iget-boolean p1, p0, Lk/d/a/b;->z:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lk/d/a/b;->z:Z

    .line 6
    iget-object p1, p0, Lk/d/a/b;->y:Lk/d/a/c;

    .line 7
    iget-object p1, p1, Lk/d/a/c;->j:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lk/d/a/b;->x:Lk/d/a/k;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lk/d/a/k;->a(I)Lk/d/a/j;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lk/d/a/b;->x:Lk/d/a/k;

    invoke-virtual {v1}, Lk/d/a/k;->a()Lk/d/a/j;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lk/d/a/b;->z:Z

    .line 5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iput-boolean v0, p0, Lk/d/a/b;->z:Z

    return-void

    .line 7
    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 8
    :cond_1
    :goto_1
    iget-object v2, p0, Lk/d/a/b;->y:Lk/d/a/c;

    invoke-virtual {v2, v1}, Lk/d/a/c;->a(Lk/d/a/j;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 9
    :try_start_4
    iget-object v2, p0, Lk/d/a/b;->y:Lk/d/a/c;

    .line 10
    iget-object v2, v2, Lk/d/a/c;->r:Lk/d/a/g;

    .line 11
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was interruppted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lk/d/a/g;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    iput-boolean v0, p0, Lk/d/a/b;->z:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Lk/d/a/b;->z:Z

    .line 13
    throw v1
.end method
