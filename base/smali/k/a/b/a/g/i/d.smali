.class public Lk/a/b/a/g/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/d;
.implements Lk/a/b/a/d/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/g/i/d$d;,
        Lk/a/b/a/g/i/d$c;,
        Lk/a/b/a/g/i/d$e;,
        Lk/a/b/a/g/i/d$b;
    }
.end annotation


# static fields
.field public static final O:Lk/a/b/a/d/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/k<",
            "Lk/a/b/a/d/h;",
            "Lk/a/b/a/d/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lk/a/b/a/d/l;

.field public B:Lk/a/b/a/d/l;

.field public C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk/a/b/a/g/e;",
            ">;"
        }
    .end annotation
.end field

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Lk/a/b/a/g/g;

.field public H:Lk/a/b/a/d/i;

.field public I:Lk/a/b/a/g/i/m;

.field public final J:Ljava/nio/channels/Pipe;

.field public K:Lk/a/b/a/g/i/k;

.field public L:Lk/a/b/a/d/u;

.field public final M:Lk/a/b/a/g/i/c;

.field public final N:Lk/a/b/a/g/f;

.field public x:Lk/a/b/a/d/g0/c;

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk/a/b/a/d/k;

    const-class v1, Lk/a/b/a/d/l;

    invoke-direct {v0, v1}, Lk/a/b/a/d/k;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lk/a/b/a/g/i/d;->O:Lk/a/b/a/d/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    new-instance v0, Lk/a/b/a/g/i/c;

    invoke-direct {v0}, Lk/a/b/a/g/i/c;-><init>()V

    new-instance v1, Lk/a/b/a/g/f;

    invoke-direct {v1}, Lk/a/b/a/g/f;-><init>()V

    invoke-direct {p0, v0, v1}, Lk/a/b/a/g/i/d;-><init>(Lk/a/b/a/g/i/c;Lk/a/b/a/g/f;)V

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/g/i/c;Lk/a/b/a/g/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/c;

    invoke-direct {v0}, Lk/a/b/a/d/g0/c;-><init>()V

    .line 3
    iput-object v0, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    .line 4
    new-instance v0, Lk/a/b/a/g/i/b;

    invoke-direct {v0}, Lk/a/b/a/g/i/b;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/d;->A:Lk/a/b/a/d/l;

    .line 5
    new-instance v0, Lk/a/b/a/d/a;

    invoke-direct {v0}, Lk/a/b/a/d/a;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/d;->B:Lk/a/b/a/d/l;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/d;->C:Ljava/util/Set;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lk/a/b/a/g/i/d;->D:I

    .line 8
    new-instance v0, Lk/a/b/a/g/i/m;

    iget-object v1, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    invoke-direct {v0, v1}, Lk/a/b/a/g/i/m;-><init>(Lk/a/b/a/d/b;)V

    iput-object v0, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    .line 9
    iput-object p1, p0, Lk/a/b/a/g/i/d;->M:Lk/a/b/a/g/i/c;

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Ljava/nio/channels/Pipe;->open()Ljava/nio/channels/Pipe;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    .line 12
    invoke-virtual {p0}, Lk/a/b/a/g/i/d;->n()J

    .line 13
    new-instance p1, Lk/a/b/a/d/g0/r;

    invoke-direct {p1}, Lk/a/b/a/d/g0/r;-><init>()V

    iput-object p1, p0, Lk/a/b/a/g/i/d;->L:Lk/a/b/a/d/u;

    .line 14
    iput-object p2, p0, Lk/a/b/a/g/i/d;->N:Lk/a/b/a/g/f;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public static synthetic a(Lk/a/b/a/g/i/d;Lk/a/b/a/g/g;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 43
    invoke-interface {p1}, Lk/a/b/a/g/g;->b()Lk/a/b/a/g/d;

    move-result-object p0

    check-cast p0, Lk/a/b/a/g/i/d;

    .line 44
    iget-object v0, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    iget-wide v1, p0, Lk/a/b/a/g/i/d;->y:J

    .line 45
    :cond_0
    :goto_0
    iget-object v3, v0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    iget-object v3, v0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/b/a/g/i/l;

    .line 47
    iget-wide v4, v3, Lk/a/b/a/g/i/l;->x:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_1

    .line 48
    iget-object v4, v0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 49
    iget-boolean v4, v3, Lk/a/b/a/g/i/l;->z:Z

    if-nez v4, :cond_0

    .line 50
    iget-object v4, v0, Lk/a/b/a/g/i/m;->a:Lk/a/b/a/d/g0/c;

    sget-object v5, Lk/a/b/a/d/h$b;->TIMER_TASK:Lk/a/b/a/d/h$b;

    invoke-virtual {v4, v5, v3}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    invoke-virtual {v0}, Lk/a/b/a/g/i/m;->a()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lk/a/b/a/g/g;->c(J)V

    .line 52
    invoke-virtual {p0, p1}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/g/g;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 53
    throw p0
.end method


# virtual methods
.method public B()Lk/a/b/a/g/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->N:Lk/a/b/a/g/f;

    return-object v0
.end method

.method public F()Lk/a/b/a/d/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->B:Lk/a/b/a/d/l;

    return-object v0
.end method

.method public S()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/g/i/d;->y:J

    return-wide v0
.end method

.method public a(Lk/a/b/a/d/c;)Ljava/lang/String;
    .locals 2

    .line 54
    invoke-interface {p1}, Lk/a/b/a/d/j;->q()Lk/a/b/a/d/u;

    move-result-object p1

    .line 55
    const-class v0, Lk/a/b/a/g/i/a;

    check-cast p1, Lk/a/b/a/d/g0/r;

    .line 56
    iget-object p1, p1, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    const-string v1, "pn_reactor_connection_peer_address"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    check-cast p1, Lk/a/b/a/g/i/a;

    if-eqz p1, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p1, Lk/a/b/a/g/i/a;->d:Ljava/lang/String;

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p1, Lk/a/b/a/g/i/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ":"

    .line 62
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    iget-object p1, p1, Lk/a/b/a/g/i/a;->e:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;ILk/a/b/a/d/l;)Lk/a/b/a/d/c;
    .locals 4

    .line 1
    new-instance v0, Lk/a/b/a/d/g0/d;

    invoke-direct {v0}, Lk/a/b/a/d/g0/d;-><init>()V

    .line 2
    invoke-static {v0, p3}, Lk/a/b/a/d/a;->setHandler(Lk/a/b/a/d/j;Lk/a/b/a/d/l;)V

    .line 3
    iget-object p3, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    invoke-interface {v0, p3}, Lk/a/b/a/d/c;->a(Lk/a/b/a/d/b;)V

    .line 4
    iget-object p3, p0, Lk/a/b/a/g/i/d;->C:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iput-object p0, v0, Lk/a/b/a/d/g0/d;->Y:Lk/a/b/a/g/d;

    .line 6
    invoke-virtual {v0}, Lk/a/b/a/d/g0/f;->q()Lk/a/b/a/d/u;

    move-result-object p3

    .line 7
    const-class v1, Lk/a/b/a/g/a;

    check-cast p3, Lk/a/b/a/d/g0/r;

    .line 8
    iget-object v2, p3, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    const-string v3, "pn_reactor_connection_acceptor"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lk/a/b/a/g/i/a;

    invoke-direct {v1}, Lk/a/b/a/g/i/a;-><init>()V

    .line 10
    iput-object p1, v1, Lk/a/b/a/g/i/a;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    const/16 p2, 0x1628

    .line 11
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    iput-object p1, v1, Lk/a/b/a/g/i/a;->e:Ljava/lang/String;

    .line 13
    iget-object p1, p3, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    const-string p2, "pn_reactor_connection_peer_address"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set the host address on an incoming Connection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILk/a/b/a/d/l;)Lk/a/b/a/g/h;
    .locals 5

    .line 35
    iget-object v0, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    iget-wide v1, p0, Lk/a/b/a/g/i/d;->y:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 36
    new-instance p1, Lk/a/b/a/g/i/l;

    iget-object v3, v0, Lk/a/b/a/g/i/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Lk/a/b/a/g/i/l;-><init>(JI)V

    .line 37
    iget-object v0, v0, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object p0, p1, Lk/a/b/a/g/i/l;->B:Lk/a/b/a/g/d;

    .line 39
    invoke-static {p1, p2}, Lk/a/b/a/d/a;->setHandler(Lk/a/b/a/d/j;Lk/a/b/a/d/l;)V

    .line 40
    iget-object p2, p0, Lk/a/b/a/g/i/d;->G:Lk/a/b/a/g/g;

    if-eqz p2, :cond_0

    .line 41
    iget-object v0, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    invoke-virtual {v0}, Lk/a/b/a/g/i/m;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lk/a/b/a/g/g;->c(J)V

    .line 42
    iget-object p2, p0, Lk/a/b/a/g/i/d;->G:Lk/a/b/a/g/g;

    invoke-virtual {p0, p2}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 2

    .line 15
    iget-object v0, p0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Pipe$SourceChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    iget-object v0, p0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Pipe$SourceChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Pipe$SinkChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :try_start_1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Pipe$SinkChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 19
    :cond_1
    :goto_1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->K:Lk/a/b/a/g/i/k;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 20
    :try_start_2
    iget-object v0, v0, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 21
    throw v0

    .line 22
    :catch_2
    :cond_3
    :goto_2
    iget-object v0, p0, Lk/a/b/a/g/i/d;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/g/e;

    .line 23
    invoke-interface {v1}, Lk/a/b/a/g/e;->a()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final a(Lk/a/b/a/d/h;Lk/a/b/a/d/l;)V
    .locals 2

    .line 30
    sget-object v0, Lk/a/b/a/g/i/d;->O:Lk/a/b/a/d/k;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->q()Lk/a/b/a/d/u;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/g0/r;

    .line 32
    iget-object v1, v1, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/g;->a(Lk/a/b/a/d/l;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 34
    throw p1
.end method

.method public a(Lk/a/b/a/g/g;)V
    .locals 2

    .line 24
    move-object v0, p1

    check-cast v0, Lk/a/b/a/g/i/j;

    .line 25
    iget-boolean v1, v0, Lk/a/b/a/g/i/j;->L:Z

    if-nez v1, :cond_1

    .line 26
    iget-boolean v1, v0, Lk/a/b/a/g/i/j;->K:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lk/a/b/a/g/i/j;->L:Z

    .line 28
    iget-object v0, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_FINAL:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p1}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_UPDATED:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p1}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lk/a/b/a/g/i/d;->z:J

    return-void
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/g/i/d;->z:J

    return-wide v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/b/a/g/i/d;->E:Z

    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lk/a/b/a/g/i/d;->y:J

    return-wide v0
.end method

.method public o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/c;->a:Lk/a/b/a/d/g0/g;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, v0, Lk/a/b/a/d/g0/g;->z:Lk/a/b/a/d/g0/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return v3

    .line 4
    :cond_2
    iget-object v0, v0, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    .line 5
    sget-object v2, Lk/a/b/a/d/h$b;->REACTOR_QUIESCED:Lk/a/b/a/d/h$b;

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public process()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/g/i/d;->n()J

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :cond_0
    :goto_0
    iget-object v2, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    .line 3
    iget-object v2, v2, Lk/a/b/a/d/g0/c;->a:Lk/a/b/a/d/g0/g;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 4
    iget-boolean v1, p0, Lk/a/b/a/g/i/d;->E:Z

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v4, p0, Lk/a/b/a/g/i/d;->E:Z

    return v3

    .line 6
    :cond_1
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v1

    invoke-static {v1}, Lk/a/b/a/d/a;->getHandler(Lk/a/b/a/d/j;)Lk/a/b/a/d/l;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v1

    invoke-static {v1}, Lk/a/b/a/d/a;->getHandler(Lk/a/b/a/d/j;)Lk/a/b/a/d/l;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v1

    invoke-static {v1}, Lk/a/b/a/d/a;->getHandler(Lk/a/b/a/d/j;)Lk/a/b/a/d/l;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-object v1, v2, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v3, v1, Lk/a/b/a/g/h;

    if-eqz v3, :cond_5

    .line 13
    check-cast v1, Lk/a/b/a/g/h;

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_7

    .line 14
    iget-object v1, v2, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v3, v1, Lk/a/b/a/g/h;

    if-eqz v3, :cond_6

    .line 15
    check-cast v1, Lk/a/b/a/g/h;

    goto :goto_2

    :cond_6
    move-object v1, v0

    .line 16
    :goto_2
    invoke-static {v1}, Lk/a/b/a/d/a;->getHandler(Lk/a/b/a/d/j;)Lk/a/b/a/d/l;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->n()Lk/a/b/a/g/g;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->n()Lk/a/b/a/g/g;

    move-result-object v1

    invoke-static {v1}, Lk/a/b/a/d/a;->getHandler(Lk/a/b/a/d/j;)Lk/a/b/a/d/l;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 19
    :cond_8
    iget-object v1, p0, Lk/a/b/a/g/i/d;->B:Lk/a/b/a/d/l;

    .line 20
    :goto_3
    invoke-virtual {p0, v2, v1}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/d/h;Lk/a/b/a/d/l;)V

    .line 21
    iget-object v1, p0, Lk/a/b/a/g/i/d;->A:Lk/a/b/a/d/l;

    invoke-virtual {p0, v2, v1}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/d/h;Lk/a/b/a/d/l;)V

    .line 22
    iget-object v1, v2, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    .line 23
    sget-object v3, Lk/a/b/a/d/h$b;->CONNECTION_FINAL:Lk/a/b/a/d/h$b;

    if-ne v1, v3, :cond_9

    .line 24
    iget-object v1, p0, Lk/a/b/a/g/i/d;->C:Ljava/util/Set;

    invoke-virtual {v2}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    :cond_9
    iget-object v1, v2, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    .line 26
    iput-object v1, p0, Lk/a/b/a/g/i/d;->H:Lk/a/b/a/d/i;

    .line 27
    iget-object v2, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    .line 28
    iget-object v3, v2, Lk/a/b/a/d/g0/c;->a:Lk/a/b/a/d/g0/g;

    if-eqz v3, :cond_0

    .line 29
    iget-object v4, v3, Lk/a/b/a/d/g0/g;->z:Lk/a/b/a/d/g0/g;

    .line 30
    iget-object v5, v2, Lk/a/b/a/d/g0/c;->c:Lk/a/b/a/d/g0/g;

    iput-object v5, v3, Lk/a/b/a/d/g0/g;->z:Lk/a/b/a/d/g0/g;

    .line 31
    iput-object v3, v2, Lk/a/b/a/d/g0/c;->c:Lk/a/b/a/d/g0/g;

    .line 32
    iput-object v0, v3, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    .line 33
    iput-object v0, v3, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    .line 34
    iget-object v3, v3, Lk/a/b/a/d/g0/g;->A:Lk/a/b/a/d/g0/r;

    .line 35
    iget-object v3, v3, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 36
    iput-object v4, v2, Lk/a/b/a/d/g0/c;->a:Lk/a/b/a/d/g0/g;

    goto/16 :goto_0

    .line 37
    :cond_a
    iget-boolean v2, p0, Lk/a/b/a/g/i/d;->F:Z

    if-nez v2, :cond_e

    .line 38
    iget-object v2, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    .line 39
    invoke-virtual {v2}, Lk/a/b/a/g/i/m;->b()V

    .line 40
    iget-object v2, v2, Lk/a/b/a/g/i/m;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-gtz v2, :cond_c

    .line 41
    iget v2, p0, Lk/a/b/a/g/i/d;->D:I

    if-le v2, v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_e

    .line 42
    sget-object v2, Lk/a/b/a/d/h$b;->REACTOR_QUIESCED:Lk/a/b/a/d/h$b;

    if-eq v1, v2, :cond_d

    iget-object v2, p0, Lk/a/b/a/g/i/d;->H:Lk/a/b/a/d/i;

    sget-object v4, Lk/a/b/a/d/h$b;->REACTOR_FINAL:Lk/a/b/a/d/h$b;

    if-eq v2, v4, :cond_d

    .line 43
    iget-object v2, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    sget-object v3, Lk/a/b/a/d/h$b;->REACTOR_QUIESCED:Lk/a/b/a/d/h$b;

    invoke-virtual {v2, v3, p0}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto/16 :goto_0

    :cond_d
    return v3

    .line 44
    :cond_e
    iget-object v2, p0, Lk/a/b/a/g/i/d;->G:Lk/a/b/a/g/g;

    if-eqz v2, :cond_f

    .line 45
    invoke-interface {v2}, Lk/a/b/a/g/g;->p()V

    .line 46
    iget-object v2, p0, Lk/a/b/a/g/i/d;->G:Lk/a/b/a/g/g;

    invoke-virtual {p0, v2}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/g/g;)V

    .line 47
    iput-object v0, p0, Lk/a/b/a/g/i/d;->G:Lk/a/b/a/g/g;

    goto/16 :goto_0

    .line 48
    :cond_f
    iget-object v0, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    sget-object v1, Lk/a/b/a/d/h$b;->REACTOR_FINAL:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p0}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return v4
.end method

.method public q()Lk/a/b/a/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->L:Lk/a/b/a/d/u;

    return-object v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    sget-object v1, Lk/a/b/a/d/h$b;->REACTOR_INIT:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p0}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/g/i/d;->w()Lk/a/b/a/g/g;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    invoke-virtual {v1}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Lk/a/b/a/g/g;->a(Ljava/nio/channels/SelectableChannel;)V

    .line 4
    new-instance v1, Lk/a/b/a/g/i/d$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lk/a/b/a/g/i/d$e;-><init>(Lk/a/b/a/g/i/d;Lk/a/b/a/g/i/d$a;)V

    invoke-interface {v0, v1}, Lk/a/b/a/g/g;->a(Lk/a/b/a/g/g$a;)V

    .line 5
    new-instance v1, Lk/a/b/a/g/i/d$c;

    invoke-direct {v1, p0, v2}, Lk/a/b/a/g/i/d$c;-><init>(Lk/a/b/a/g/i/d;Lk/a/b/a/g/i/d$a;)V

    invoke-interface {v0, v1}, Lk/a/b/a/g/g;->e(Lk/a/b/a/g/g$a;)V

    .line 6
    new-instance v1, Lk/a/b/a/g/i/d$d;

    invoke-direct {v1, v2}, Lk/a/b/a/g/i/d$d;-><init>(Lk/a/b/a/g/i/d$a;)V

    invoke-interface {v0, v1}, Lk/a/b/a/g/g;->c(Lk/a/b/a/g/g$a;)V

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Lk/a/b/a/g/g;->a(Z)V

    .line 8
    iget-object v1, p0, Lk/a/b/a/g/i/d;->I:Lk/a/b/a/g/i/m;

    invoke-virtual {v1}, Lk/a/b/a/g/i/m;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lk/a/b/a/g/g;->c(J)V

    .line 9
    invoke-virtual {p0, v0}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/g/g;)V

    .line 10
    iput-object v0, p0, Lk/a/b/a/g/i/d;->G:Lk/a/b/a/g/g;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/b/a/g/i/d;->F:Z

    return-void
.end method

.method public w()Lk/a/b/a/g/g;
    .locals 3

    .line 1
    new-instance v0, Lk/a/b/a/g/i/j;

    invoke-direct {v0}, Lk/a/b/a/g/i/j;-><init>()V

    .line 2
    iget-object v1, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    .line 3
    new-instance v2, Lk/a/b/a/g/i/f;

    invoke-direct {v2, v0, v1}, Lk/a/b/a/g/i/f;-><init>(Lk/a/b/a/g/i/j;Lk/a/b/a/d/g0/c;)V

    .line 4
    iput-object v2, v0, Lk/a/b/a/g/i/j;->x:Lk/a/b/a/g/g$a;

    .line 5
    new-instance v2, Lk/a/b/a/g/i/g;

    invoke-direct {v2, v0, v1}, Lk/a/b/a/g/i/g;-><init>(Lk/a/b/a/g/i/j;Lk/a/b/a/d/g0/c;)V

    .line 6
    iput-object v2, v0, Lk/a/b/a/g/i/j;->y:Lk/a/b/a/g/g$a;

    .line 7
    new-instance v2, Lk/a/b/a/g/i/h;

    invoke-direct {v2, v0, v1}, Lk/a/b/a/g/i/h;-><init>(Lk/a/b/a/g/i/j;Lk/a/b/a/d/g0/c;)V

    .line 8
    iput-object v2, v0, Lk/a/b/a/g/i/j;->A:Lk/a/b/a/g/g$a;

    .line 9
    new-instance v2, Lk/a/b/a/g/i/i;

    invoke-direct {v2, v0, v1}, Lk/a/b/a/g/i/i;-><init>(Lk/a/b/a/g/i/j;Lk/a/b/a/d/g0/c;)V

    .line 10
    iput-object v2, v0, Lk/a/b/a/g/i/j;->z:Lk/a/b/a/g/g$a;

    .line 11
    iget-object v1, p0, Lk/a/b/a/g/i/d;->x:Lk/a/b/a/d/g0/c;

    sget-object v2, Lk/a/b/a/d/h$b;->SELECTABLE_INIT:Lk/a/b/a/d/h$b;

    invoke-virtual {v1, v2, v0}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 12
    iput-object p0, v0, Lk/a/b/a/g/i/j;->I:Lk/a/b/a/g/d;

    .line 13
    iget-object v1, p0, Lk/a/b/a/g/i/d;->C:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lk/a/b/a/g/i/d$b;

    invoke-direct {v1, p0, p0, v0}, Lk/a/b/a/g/i/d$b;-><init>(Lk/a/b/a/g/i/d;Lk/a/b/a/g/i/d;Lk/a/b/a/g/e;)V

    .line 15
    iput-object v1, v0, Lk/a/b/a/g/i/j;->B:Lk/a/b/a/g/g$a;

    .line 16
    iget v1, p0, Lk/a/b/a/g/i/d;->D:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/a/b/a/g/i/d;->D:I

    return-object v0
.end method
