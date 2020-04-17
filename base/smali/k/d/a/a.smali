.class public Lk/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lk/d/a/l;


# instance fields
.field public final x:Lk/d/a/k;

.field public final y:Lk/d/a/c;


# direct methods
.method public constructor <init>(Lk/d/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/d/a/a;->y:Lk/d/a/c;

    .line 3
    new-instance p1, Lk/d/a/k;

    invoke-direct {p1}, Lk/d/a/k;-><init>()V

    iput-object p1, p0, Lk/d/a/a;->x:Lk/d/a/k;

    return-void
.end method


# virtual methods
.method public a(Lk/d/a/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lk/d/a/j;->a(Lk/d/a/q;Ljava/lang/Object;)Lk/d/a/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk/d/a/a;->x:Lk/d/a/k;

    invoke-virtual {p2, p1}, Lk/d/a/k;->a(Lk/d/a/j;)V

    .line 3
    iget-object p1, p0, Lk/d/a/a;->y:Lk/d/a/c;

    .line 4
    iget-object p1, p1, Lk/d/a/c;->j:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/d/a/a;->x:Lk/d/a/k;

    invoke-virtual {v0}, Lk/d/a/k;->a()Lk/d/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lk/d/a/a;->y:Lk/d/a/c;

    invoke-virtual {v1, v0}, Lk/d/a/c;->a(Lk/d/a/j;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
