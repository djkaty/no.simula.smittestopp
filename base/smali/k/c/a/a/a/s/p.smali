.class public Lk/c/a/a/a/s/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/c/a/a/a/t/b;

.field public volatile b:Z

.field public c:Z

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Lk/c/a/a/a/s/s/u;

.field public h:Lk/c/a/a/a/k;

.field public i:[Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lk/c/a/a/a/b;

.field public l:Lk/c/a/a/a/a;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "k.c.a.a.a.s.p"

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 2
    invoke-static {v1, v0}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk/c/a/a/a/s/p;->b:Z

    .line 4
    iput-boolean v0, p0, Lk/c/a/a/a/s/p;->c:Z

    .line 5
    iput-boolean v0, p0, Lk/c/a/a/a/s/p;->d:Z

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    .line 9
    iput-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    .line 10
    iput-object v1, p0, Lk/c/a/a/a/s/p;->i:[Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lk/c/a/a/a/s/p;->k:Lk/c/a/a/a/b;

    .line 12
    iput-object v1, p0, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 13
    iput-object v1, p0, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    .line 14
    iput v0, p0, Lk/c/a/a/a/s/p;->n:I

    .line 15
    iput-boolean v0, p0, Lk/c/a/a/a/s/p;->o:Z

    .line 16
    iget-object v0, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    invoke-interface {v0, p1}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 22
    iget-object v0, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.s.p"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 24
    iget-object v3, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v6, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    aput-object v6, v2, v3

    const-string v3, "notifyComplete"

    const-string v6, "404"

    invoke-interface {v0, v1, v3, v6, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->c:Z

    if-eqz v1, :cond_0

    .line 27
    iput-boolean v5, p0, Lk/c/a/a/a/s/p;->b:Z

    .line 28
    iput-boolean v4, p0, Lk/c/a/a/a/s/p;->c:Z

    goto :goto_0

    .line 29
    :cond_0
    iput-boolean v4, p0, Lk/c/a/a/a/s/p;->c:Z

    .line 30
    :goto_0
    iget-object v1, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    iget-object v1, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_1
    iput-boolean v5, p0, Lk/c/a/a/a/s/p;->d:Z

    .line 34
    iget-object v0, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 35
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public a(J)V
    .locals 8

    const-string v0, "k.c.a.a.a.s.p"

    .line 1
    iget-object v1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const-string v6, "waitForCompletion"

    const-string v7, "407"

    invoke-interface {v1, v0, v6, v7, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lk/c/a/a/a/s/p;->b(J)Lk/c/a/a/a/s/s/u;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    iget-boolean p1, p0, Lk/c/a/a/a/s/p;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    new-array p2, v3, [Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    aput-object v1, p2, v4

    aput-object p0, p2, v5

    const-string v1, "406"

    .line 8
    invoke-interface {p1, v0, v6, v1, p2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lk/c/a/a/a/k;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lk/c/a/a/a/k;-><init>(I)V

    iput-object p1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    .line 10
    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    throw p1
.end method

.method public a(Lk/c/a/a/a/k;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iput-object p1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/k;)V
    .locals 6

    .line 13
    iget-object v0, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.s.p"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const-string v4, "markComplete"

    const-string v5, "404"

    .line 15
    invoke-interface {v0, v1, v4, v5, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    instance-of v1, p1, Lk/c/a/a/a/s/s/b;

    .line 18
    iput-boolean v3, p0, Lk/c/a/a/a/s/p;->c:Z

    .line 19
    iput-object p1, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    .line 20
    iput-object p2, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lk/c/a/a/a/s/p;->i:[Ljava/lang/String;

    return-void
.end method

.method public b(J)Lk/c/a/a/a/s/s/u;
    .locals 12

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.p"

    const-string v3, "waitForResponse"

    const-string v4, "400"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    .line 3
    iget-object v6, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget-boolean v6, p0, Lk/c/a/a/a/s/p;->d:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const/4 v6, 0x3

    iget-boolean v10, p0, Lk/c/a/a/a/s/p;->b:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x4

    iget-object v10, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    if-nez v10, :cond_0

    const-string v10, "false"

    goto :goto_0

    :cond_0
    const-string v10, "true"

    :goto_0
    aput-object v10, v5, v6

    const/4 v6, 0x5

    iget-object v10, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    aput-object v10, v5, v6

    const/4 v6, 0x6

    aput-object p0, v5, v6

    iget-object v6, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    invoke-interface/range {v1 .. v6}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->b:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    .line 7
    :try_start_1
    iget-object v1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v4, "k.c.a.a.a.s.p"

    const-string v5, "waitForResponse"

    const-string v6, "408"

    new-array v10, v9, [Ljava/lang/Object;

    .line 8
    iget-object v11, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    aput-object v11, v10, v7

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-interface {v1, v4, v5, v6, v10}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 10
    iget-object v1, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    new-instance v4, Lk/c/a/a/a/k;

    invoke-direct {v4, v1}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    .line 13
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->b:Z

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    if-nez v1, :cond_5

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-object p1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string p2, "k.c.a.a.a.s.p"

    new-array v0, v9, [Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    aput-object v1, v0, v7

    .line 18
    iget-object v1, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    aput-object v1, v0, v8

    const-string v1, "waitForResponse"

    const-string v2, "402"

    invoke-interface {p1, p2, v1, v2, v0}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    return-object p1

    .line 20
    :cond_5
    :try_start_3
    iget-object v1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.p"

    const-string v3, "waitForResponse"

    const-string v4, "401"

    const/4 v5, 0x0

    iget-object v6, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    invoke-interface/range {v1 .. v6}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 21
    iget-object p1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    throw p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 7

    .line 23
    iget-object v0, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.s.p"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    iget-object v4, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "notifySent"

    const-string v6, "403"

    .line 25
    invoke-interface {v0, v1, v4, v6, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    iput-object v1, p0, Lk/c/a/a/a/s/p;->g:Lk/c/a/a/a/s/s/u;

    .line 28
    iput-boolean v5, p0, Lk/c/a/a/a/s/p;->b:Z

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    iget-object v1, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_1
    iput-boolean v2, p0, Lk/c/a/a/a/s/p;->d:Z

    .line 32
    iget-object v0, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 34
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/p;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    if-nez v2, :cond_3

    .line 4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->d:Z

    if-eqz v1, :cond_2

    .line 6
    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->d:Z

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    if-nez v1, :cond_0

    const/4 v1, 0x6

    .line 8
    invoke-static {v1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object v1

    throw v1

    .line 9
    :cond_0
    iget-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    throw v1

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 11
    :cond_2
    :try_start_3
    iget-object v1, p0, Lk/c/a/a/a/s/p;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.p"

    const-string v3, "waitUntilSent"

    const-string v4, "409"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 12
    iget-object v7, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 13
    invoke-interface {v1, v2, v3, v4, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lk/c/a/a/a/s/p;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 15
    :cond_3
    :try_start_4
    iget-object v2, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    throw v2

    :catchall_0
    move-exception v2

    .line 16
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "key="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ,topics="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v1, p0, Lk/c/a/a/a/s/p;->i:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lk/c/a/a/a/s/p;->i:[Ljava/lang/String;

    .line 8
    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, " ,usercontext="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v1, p0, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,isComplete="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->b:Z

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,isNotified="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    iget-boolean v1, p0, Lk/c/a/a/a/s/p;->o:Z

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,exception="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    iget-object v1, p0, Lk/c/a/a/a/s/p;->h:Lk/c/a/a/a/k;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,actioncallback="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object v1, p0, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
