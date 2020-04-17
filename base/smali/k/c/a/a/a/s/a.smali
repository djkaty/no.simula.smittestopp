.class public Lk/c/a/a/a/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/c/a/a/a/s/a$a;,
        Lk/c/a/a/a/s/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lk/c/a/a/a/t/b;

.field public c:Lk/c/a/a/a/b;

.field public d:I

.field public e:[Lk/c/a/a/a/s/i;

.field public f:Lk/c/a/a/a/s/d;

.field public g:Lk/c/a/a/a/s/e;

.field public h:Lk/c/a/a/a/s/c;

.field public i:Lk/c/a/a/a/s/b;

.field public j:Lk/c/a/a/a/i;

.field public k:Lk/c/a/a/a/u/a;

.field public l:Lk/c/a/a/a/o;

.field public m:Lk/c/a/a/a/s/f;

.field public n:Z

.field public o:B

.field public final p:Ljava/lang/Object;

.field public q:Z

.field public r:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lk/c/a/a/a/b;Lk/c/a/a/a/u/a;Lk/c/a/a/a/o;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lk/c/a/a/a/s/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 3
    invoke-static {v1, v0}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lk/c/a/a/a/s/a;->n:Z

    const/4 v1, 0x3

    .line 5
    iput-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    .line 6
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    .line 7
    iput-boolean v0, p0, Lk/c/a/a/a/s/a;->q:Z

    .line 8
    iput-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    .line 9
    iput-object p1, p0, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 10
    iput-object p2, p0, Lk/c/a/a/a/s/a;->k:Lk/c/a/a/a/u/a;

    .line 11
    iput-object p3, p0, Lk/c/a/a/a/s/a;->l:Lk/c/a/a/a/o;

    .line 12
    move-object v0, p3

    check-cast v0, Lk/c/a/a/a/r;

    if-eqz v0, :cond_0

    .line 13
    iput-object p0, v0, Lk/c/a/a/a/r;->b:Lk/c/a/a/a/s/a;

    .line 14
    check-cast p1, Lk/c/a/a/a/f;

    .line 15
    iget-object p1, p1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lk/c/a/a/a/r;->d:Ljava/lang/String;

    .line 17
    iget-object v0, v0, Lk/c/a/a/a/r;->a:Lk/c/a/a/a/t/b;

    invoke-interface {v0, p1}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    .line 18
    iput-object p4, p0, Lk/c/a/a/a/s/a;->r:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance p1, Lk/c/a/a/a/s/f;

    .line 20
    iget-object p4, p0, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 21
    check-cast p4, Lk/c/a/a/a/f;

    .line 22
    iget-object p4, p4, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 23
    invoke-direct {p1, p4}, Lk/c/a/a/a/s/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    .line 24
    new-instance p1, Lk/c/a/a/a/s/c;

    invoke-direct {p1, p0}, Lk/c/a/a/a/s/c;-><init>(Lk/c/a/a/a/s/a;)V

    iput-object p1, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 25
    new-instance p1, Lk/c/a/a/a/s/b;

    iget-object v2, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lk/c/a/a/a/s/b;-><init>(Lk/c/a/a/a/u/a;Lk/c/a/a/a/s/f;Lk/c/a/a/a/s/c;Lk/c/a/a/a/s/a;Lk/c/a/a/a/o;)V

    iput-object p1, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 26
    iget-object p2, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 27
    iput-object p1, p2, Lk/c/a/a/a/s/c;->M:Lk/c/a/a/a/s/b;

    .line 28
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    .line 29
    iget-object p2, p0, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 30
    check-cast p2, Lk/c/a/a/a/f;

    .line 31
    iget-object p2, p2, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 32
    invoke-interface {p1, p2}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 33
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 6

    .line 187
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v1, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    instance-of v0, p1, Lk/c/a/a/a/k;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, Lk/c/a/a/a/k;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :cond_0
    move-object v0, p1

    check-cast v0, Lk/c/a/a/a/k;

    :goto_0
    const/4 p1, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/q;Lk/c/a/a/a/k;)V

    return-void
.end method

.method public a(Lk/c/a/a/a/i;Lk/c/a/a/a/q;)V
    .locals 11

    .line 46
    iget-object v1, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->d()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lk/c/a/a/a/s/a;->q:Z

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v4, "connect"

    const-string v5, "214"

    invoke-interface {v0, v3, v4, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-byte v2, p0, Lk/c/a/a/a/s/a;->o:B

    .line 50
    iput-object p1, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 51
    new-instance v0, Lk/c/a/a/a/s/s/d;

    iget-object v2, p0, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    check-cast v2, Lk/c/a/a/a/f;

    .line 52
    iget-object v3, v2, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 54
    iget v4, v2, Lk/c/a/a/a/i;->n:I

    .line 55
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 56
    iget-boolean v5, v2, Lk/c/a/a/a/i;->k:Z

    .line 57
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 58
    iget v6, v2, Lk/c/a/a/a/i;->a:I

    .line 59
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 60
    iget-object v7, v2, Lk/c/a/a/a/i;->e:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 62
    iget-object v8, v2, Lk/c/a/a/a/i;->f:[C

    .line 63
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 64
    iget-object v9, v2, Lk/c/a/a/a/i;->d:Lk/c/a/a/a/l;

    .line 65
    iget-object v2, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 66
    iget-object v10, v2, Lk/c/a/a/a/i;->c:Ljava/lang/String;

    move-object v2, v0

    .line 67
    invoke-direct/range {v2 .. v10}, Lk/c/a/a/a/s/s/d;-><init>(Ljava/lang/String;IZILjava/lang/String;[CLk/c/a/a/a/l;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 69
    iget v3, v3, Lk/c/a/a/a/i;->a:I

    int-to-long v3, v3

    if-eqz v2, :cond_1

    .line 70
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, v2, Lk/c/a/a/a/s/b;->i:J

    .line 71
    iget-object v2, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 72
    iget-boolean v3, v3, Lk/c/a/a/a/i;->k:Z

    .line 73
    iput-boolean v3, v2, Lk/c/a/a/a/s/b;->j:Z

    .line 74
    iget-object v2, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 75
    iget v3, v3, Lk/c/a/a/a/i;->b:I

    .line 76
    iput v3, v2, Lk/c/a/a/a/s/b;->l:I

    .line 77
    new-instance v3, Ljava/util/Vector;

    iget v4, v2, Lk/c/a/a/a/s/b;->l:I

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, v2, Lk/c/a/a/a/s/b;->d:Ljava/util/Vector;

    .line 78
    iget-object v2, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    invoke-virtual {v2}, Lk/c/a/a/a/s/f;->e()V

    .line 79
    new-instance v2, Lk/c/a/a/a/s/a$a;

    invoke-direct {v2, p0, p0, p2, v0}, Lk/c/a/a/a/s/a$a;-><init>(Lk/c/a/a/a/s/a;Lk/c/a/a/a/s/a;Lk/c/a/a/a/q;Lk/c/a/a/a/s/s/d;)V

    .line 80
    iget-object v0, v2, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 81
    iget-object v0, v0, Lk/c/a/a/a/s/a;->r:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 85
    throw v0

    .line 86
    :cond_2
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v4, "connect"

    const-string v5, "207"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-byte v7, p0, Lk/c/a/a/a/s/a;->o:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-interface {v0, v3, v4, v5, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lk/c/a/a/a/s/a;->q:Z

    if-nez v0, :cond_5

    .line 88
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v2, 0x7d66

    invoke-direct {v0, v2}, Lk/c/a/a/a/k;-><init>(I)V

    throw v0

    :cond_3
    const/16 v0, 0x7d64

    .line 91
    invoke-static {v0}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object v0

    throw v0

    .line 92
    :cond_4
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v2, 0x7d6e

    invoke-direct {v0, v2}, Lk/c/a/a/a/k;-><init>(I)V

    throw v0

    .line 93
    :cond_5
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v2, 0x7d6f

    invoke-direct {v0, v2}, Lk/c/a/a/a/k;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lk/c/a/a/a/q;Lk/c/a/a/a/k;)V
    .locals 9

    .line 95
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v1, p0, Lk/c/a/a/a/s/a;->n:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lk/c/a/a/a/s/a;->q:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lk/c/a/a/a/s/a;->n:Z

    .line 98
    iget-object v2, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v3, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v4, "shutdownConnection"

    const-string v5, "216"

    invoke-interface {v2, v3, v4, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->e()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x2

    .line 100
    iput-byte v4, p0, Lk/c/a/a/a/s/a;->o:B

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p1, :cond_2

    .line 102
    iget-object v0, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 103
    iget-boolean v0, v0, Lk/c/a/a/a/s/p;->b:Z

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v0, p2}, Lk/c/a/a/a/s/p;->a(Lk/c/a/a/a/k;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lk/c/a/a/a/s/c;->e()V

    .line 106
    :cond_3
    iget-object v0, p0, Lk/c/a/a/a/s/a;->f:Lk/c/a/a/a/s/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lk/c/a/a/a/s/d;->b()V

    .line 107
    :cond_4
    :try_start_1
    iget-object v0, p0, Lk/c/a/a/a/s/a;->e:[Lk/c/a/a/a/s/i;

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lk/c/a/a/a/s/a;->e:[Lk/c/a/a/a/s/i;

    iget v4, p0, Lk/c/a/a/a/s/a;->d:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_5

    .line 109
    invoke-interface {v0}, Lk/c/a/a/a/s/i;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :catch_0
    :cond_5
    iget-object v0, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    new-instance v4, Lk/c/a/a/a/k;

    const/16 v5, 0x7d66

    invoke-direct {v4, v5}, Lk/c/a/a/a/k;-><init>(I)V

    invoke-virtual {v0, v4}, Lk/c/a/a/a/s/f;->a(Lk/c/a/a/a/k;)V

    .line 111
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v4, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v5, "handleOldTokens"

    const-string v6, "222"

    invoke-interface {v0, v4, v5, v6}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 112
    :try_start_2
    iget-object v4, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    iget-object v5, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 113
    iget-object v5, v5, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    .line 114
    iget-object v4, v4, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c/a/a/a/q;

    if-nez v4, :cond_6

    .line 115
    iget-object v4, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    iget-object v5, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 116
    iget-object v5, v5, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    .line 117
    invoke-virtual {v4, p1, v5}, Lk/c/a/a/a/s/f;->a(Lk/c/a/a/a/q;Ljava/lang/String;)V

    .line 118
    :cond_6
    iget-object p1, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    invoke-virtual {p1, p2}, Lk/c/a/a/a/s/b;->b(Lk/c/a/a/a/k;)Ljava/util/Vector;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v0

    .line 120
    :goto_1
    :try_start_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    .line 121
    :cond_7
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/c/a/a/a/q;

    .line 122
    iget-object v6, v5, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 123
    iget-object v6, v6, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const-string v7, "Disc"

    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 125
    iget-object v6, v5, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 126
    iget-object v6, v6, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    const-string v7, "Con"

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 128
    :cond_8
    iget-object v6, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    invoke-virtual {v6, v5}, Lk/c/a/a/a/s/c;->a(Lk/c/a/a/a/q;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_9
    :goto_2
    move-object v4, v5

    goto :goto_1

    :catch_1
    move-object v4, v0

    .line 129
    :catch_2
    :goto_3
    :try_start_4
    iget-object p1, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    invoke-virtual {p1, p2}, Lk/c/a/a/a/s/b;->a(Lk/c/a/a/a/k;)V

    .line 130
    iget-object p1, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 131
    iget-boolean p1, p1, Lk/c/a/a/a/s/b;->j:Z

    if-eqz p1, :cond_a

    .line 132
    iget-object p1, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 133
    iget-object p1, p1, Lk/c/a/a/a/s/c;->A:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    nop

    .line 134
    :cond_a
    :goto_4
    iget-object p1, p0, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lk/c/a/a/a/s/e;->b()V

    .line 135
    :cond_b
    iget-object p1, p0, Lk/c/a/a/a/s/a;->l:Lk/c/a/a/a/o;

    if-eqz p1, :cond_c

    .line 136
    check-cast p1, Lk/c/a/a/a/r;

    .line 137
    iget-object v5, p1, Lk/c/a/a/a/r;->a:Lk/c/a/a/a/t/b;

    const-string v6, "k.c.a.a.a.r"

    const-string v7, "stop"

    const-string v8, "661"

    invoke-interface {v5, v6, v7, v8, v0}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p1, Lk/c/a/a/a/r;->c:Ljava/util/Timer;

    if-eqz p1, :cond_c

    .line 139
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 140
    :cond_c
    :try_start_5
    iget-object p1, p0, Lk/c/a/a/a/s/a;->k:Lk/c/a/a/a/u/a;

    if-eqz p1, :cond_d

    .line 141
    iget-object p1, p0, Lk/c/a/a/a/s/a;->k:Lk/c/a/a/a/u/a;

    invoke-virtual {p1}, Lk/c/a/a/a/u/a;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 142
    :catch_4
    :cond_d
    iget-object p1, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 143
    :try_start_6
    iget-object v5, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v6, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v7, "shutdownConnection"

    const-string v8, "217"

    invoke-interface {v5, v6, v7, v8}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 144
    iput-byte v5, p0, Lk/c/a/a/a/s/a;->o:B

    .line 145
    iput-boolean v3, p0, Lk/c/a/a/a/s/a;->n:Z

    .line 146
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_e

    .line 147
    iget-object p1, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    if-eqz p1, :cond_e

    .line 148
    invoke-virtual {p1, v4}, Lk/c/a/a/a/s/c;->a(Lk/c/a/a/a/q;)V

    :cond_e
    if-eqz v2, :cond_11

    .line 149
    iget-object p1, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    if-eqz p1, :cond_11

    if-eqz p1, :cond_10

    const-string v0, "connectionLost"

    .line 150
    :try_start_7
    iget-object v2, p1, Lk/c/a/a/a/s/c;->y:Lk/c/a/a/a/g;

    if-eqz v2, :cond_f

    if-eqz p2, :cond_f

    .line 151
    iget-object v2, p1, Lk/c/a/a/a/s/c;->x:Lk/c/a/a/a/t/b;

    sget-object v4, Lk/c/a/a/a/s/c;->O:Ljava/lang/String;

    const-string v5, "708"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-interface {v2, v4, v0, v5, v6}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v2, p1, Lk/c/a/a/a/s/c;->y:Lk/c/a/a/a/g;

    invoke-interface {v2, p2}, Lk/c/a/a/a/g;->connectionLost(Ljava/lang/Throwable;)V

    .line 153
    :cond_f
    iget-object v2, p1, Lk/c/a/a/a/s/c;->z:Lk/c/a/a/a/h;

    if-eqz v2, :cond_11

    if-eqz p2, :cond_11

    .line 154
    iget-object v2, p1, Lk/c/a/a/a/s/c;->z:Lk/c/a/a/a/h;

    invoke-interface {v2, p2}, Lk/c/a/a/a/g;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    .line 155
    iget-object p1, p1, Lk/c/a/a/a/s/c;->x:Lk/c/a/a/a/t/b;

    sget-object v2, Lk/c/a/a/a/s/c;->O:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v3

    const-string p2, "720"

    invoke-interface {p1, v2, v0, p2, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 156
    :cond_10
    throw v0

    .line 157
    :cond_11
    :goto_5
    iget-object p2, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter p2

    .line 158
    :try_start_8
    iget-boolean p1, p0, Lk/c/a/a/a/s/a;->q:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_12

    .line 159
    :try_start_9
    invoke-virtual {p0, v1}, Lk/c/a/a/a/s/a;->a(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 160
    :catch_5
    :cond_12
    :try_start_a
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1

    :catchall_2
    move-exception p2

    .line 161
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p2

    .line 162
    :cond_13
    :goto_6
    :try_start_c
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    .line 163
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p1
.end method

.method public a(Lk/c/a/a/a/s/s/c;Lk/c/a/a/a/k;)V
    .locals 4

    .line 1
    iget p1, p1, Lk/c/a/a/a/s/s/c;->g:I

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object p2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v2, "connectComplete"

    const-string v3, "215"

    invoke-interface {p1, p2, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "connectComplete"

    const-string v1, "204"

    invoke-interface {v0, v2, p1, v1, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    throw p2

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lk/c/a/a/a/s/s/e;JLk/c/a/a/a/q;)V
    .locals 8

    .line 164
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 169
    iget-object v2, v2, Lk/c/a/a/a/s/c;->H:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v3, "disconnect"

    const-string v4, "218"

    invoke-interface {v1, v2, v3, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 171
    iput-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    .line 172
    new-instance v1, Lk/c/a/a/a/s/a$b;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lk/c/a/a/a/s/a$b;-><init>(Lk/c/a/a/a/s/a;Lk/c/a/a/a/s/s/e;JLk/c/a/a/a/q;)V

    .line 173
    invoke-virtual {v1}, Lk/c/a/a/a/s/a$b;->a()V

    .line 174
    monitor-exit v0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object p2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "210"

    invoke-interface {p1, p2, p3, p4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6b

    .line 176
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1

    .line 177
    :cond_1
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object p2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "219"

    invoke-interface {p1, p2, p3, p4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d66

    .line 178
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1

    .line 179
    :cond_2
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object p2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "211"

    invoke-interface {p1, p2, p3, p4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d65

    .line 180
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1

    .line 181
    :cond_3
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object p2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "223"

    invoke-interface {p1, p2, p3, p4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6f

    .line 182
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V
    .locals 9

    .line 10
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v1, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lk/c/a/a/a/s/s/u;->i()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v6, 0x2

    aput-object p2, v3, v6

    const-string v7, "internalSend"

    const-string v8, "200"

    invoke-interface {v0, v1, v7, v8, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 12
    iget-object v1, v0, Lk/c/a/a/a/s/p;->k:Lk/c/a/a/a/b;

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 14
    iput-object v1, v0, Lk/c/a/a/a/s/p;->k:Lk/c/a/a/a/b;

    .line 15
    :try_start_0
    iget-object v0, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    invoke-virtual {v0, p1, p2}, Lk/c/a/a/a/s/b;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    iget-object p2, p2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p2, Lk/c/a/a/a/s/p;->k:Lk/c/a/a/a/b;

    .line 18
    instance-of p2, p1, Lk/c/a/a/a/s/s/o;

    if-eqz p2, :cond_0

    .line 19
    iget-object p2, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    check-cast p1, Lk/c/a/a/a/s/s/o;

    invoke-virtual {p2, p1}, Lk/c/a/a/a/s/b;->a(Lk/c/a/a/a/s/s/o;)V

    .line 20
    :cond_0
    throw v0

    .line 21
    :cond_1
    iget-object v0, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v1, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lk/c/a/a/a/s/s/u;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    aput-object p2, v2, v6

    const-string p1, "213"

    invoke-interface {v0, v1, v7, p1, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance p1, Lk/c/a/a/a/k;

    const/16 p2, 0x7dc9

    invoke-direct {p1, p2}, Lk/c/a/a/a/k;-><init>(I)V

    throw p1
.end method

.method public a(Z)V
    .locals 4

    .line 23
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 26
    :cond_0
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object v1, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "224"

    invoke-interface {p1, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->c()Z

    move-result p1

    if-nez p1, :cond_3

    .line 28
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 29
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lk/c/a/a/a/s/a;->q:Z

    .line 31
    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 32
    iput-byte p1, p0, Lk/c/a/a/a/s/a;->o:B

    .line 33
    iget-object p1, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    invoke-virtual {p1}, Lk/c/a/a/a/s/b;->c()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 35
    iput-object p1, p0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 36
    iput-object p1, p0, Lk/c/a/a/a/s/a;->k:Lk/c/a/a/a/u/a;

    .line 37
    iput-object p1, p0, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    .line 38
    iput-object p1, p0, Lk/c/a/a/a/s/a;->l:Lk/c/a/a/a/o;

    .line 39
    iput-object p1, p0, Lk/c/a/a/a/s/a;->f:Lk/c/a/a/a/s/d;

    .line 40
    iput-object p1, p0, Lk/c/a/a/a/s/a;->e:[Lk/c/a/a/a/s/i;

    .line 41
    iput-object p1, p0, Lk/c/a/a/a/s/a;->j:Lk/c/a/a/a/i;

    .line 42
    iput-object p1, p0, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d64

    .line 43
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1

    .line 44
    :cond_3
    new-instance p1, Lk/c/a/a/a/k;

    const/16 v1, 0x7d6e

    invoke-direct {p1, v1}, Lk/c/a/a/a/k;-><init>(I)V

    throw p1

    .line 45
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lk/c/a/a/a/s/s/d;

    if-nez v0, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lk/c/a/a/a/s/s/e;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    iget-object p2, p0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v0, "sendNoWait"

    const-string v1, "208"

    invoke-interface {p1, p2, v0, v1}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 5
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 7
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/a;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-byte v1, p0, Lk/c/a/a/a/s/a;->o:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
