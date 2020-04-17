.class public Lk/c/a/a/a/s/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public final synthetic B:Lk/c/a/a/a/s/a;

.field public x:Lk/c/a/a/a/s/s/e;

.field public y:J

.field public z:Lk/c/a/a/a/q;


# direct methods
.method public constructor <init>(Lk/c/a/a/a/s/a;Lk/c/a/a/a/s/s/e;JLk/c/a/a/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/c/a/a/a/s/a$b;->x:Lk/c/a/a/a/s/s/e;

    .line 3
    iput-wide p3, p0, Lk/c/a/a/a/s/a$b;->y:J

    .line 4
    iput-object p5, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MQTT Disc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 2
    iget-object v1, v1, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 3
    check-cast v1, Lk/c/a/a/a/f;

    .line 4
    iget-object v1, v1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/a$b;->A:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 7
    iget-object v0, v0, Lk/c/a/a/a/s/a;->r:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 3
    iget-object v1, v0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    .line 4
    iget-object v0, v0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v2, "disconnectBG:run"

    const-string v3, "221"

    .line 5
    invoke-interface {v1, v0, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 7
    iget-object v0, v0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 8
    iget-wide v1, p0, Lk/c/a/a/a/s/a$b;->y:J

    invoke-virtual {v0, v1, v2}, Lk/c/a/a/a/s/b;->a(J)V

    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    iget-object v2, p0, Lk/c/a/a/a/s/a$b;->x:Lk/c/a/a/a/s/s/e;

    iget-object v3, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    .line 10
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 11
    iget-object v1, v1, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 13
    iget-object v1, v1, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    .line 14
    invoke-virtual {v1}, Lk/c/a/a/a/s/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v1}, Lk/c/a/a/a/s/p;->c()V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v1, v0, v0}, Lk/c/a/a/a/s/p;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/k;)V

    .line 17
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 18
    iget-object v1, v1, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v1}, Lk/c/a/a/a/s/e;->a()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    iget-object v2, v2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v2, v0, v0}, Lk/c/a/a/a/s/p;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/k;)V

    .line 21
    iget-object v2, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 22
    iget-object v2, v2, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Lk/c/a/a/a/s/e;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    :cond_1
    iget-object v2, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    iget-object v2, v2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v2}, Lk/c/a/a/a/s/p;->a()V

    .line 25
    :cond_2
    iget-object v2, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    iget-object v3, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    invoke-virtual {v2, v3, v0}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/q;Lk/c/a/a/a/k;)V

    .line 26
    throw v1

    .line 27
    :catch_0
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v1, v0, v0}, Lk/c/a/a/a/s/p;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/k;)V

    .line 28
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    .line 29
    iget-object v1, v1, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {v1}, Lk/c/a/a/a/s/e;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    :cond_3
    :goto_0
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v1}, Lk/c/a/a/a/s/p;->a()V

    .line 32
    :cond_4
    iget-object v1, p0, Lk/c/a/a/a/s/a$b;->B:Lk/c/a/a/a/s/a;

    iget-object v2, p0, Lk/c/a/a/a/s/a$b;->z:Lk/c/a/a/a/q;

    invoke-virtual {v1, v2, v0}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/q;Lk/c/a/a/a/k;)V

    return-void
.end method
