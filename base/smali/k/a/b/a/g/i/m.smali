.class public Lk/a/b/a/g/i/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/a/b/a/d/g0/c;

.field public b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lk/a/b/a/g/i/l;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    check-cast p1, Lk/a/b/a/d/g0/c;

    iput-object p1, p0, Lk/a/b/a/g/i/m;->a:Lk/a/b/a/d/g0/c;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/g/i/m;->b()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/g/h;

    .line 4
    invoke-interface {v0}, Lk/a/b/a/g/h;->j()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/g/i/l;

    .line 3
    iget-boolean v0, v0, Lk/a/b/a/g/i/l;->z:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
