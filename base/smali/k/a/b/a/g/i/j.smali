.class public Lk/a/b/a/g/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g;


# instance fields
.field public A:Lk/a/b/a/g/g$a;

.field public B:Lk/a/b/a/g/g$a;

.field public C:Lk/a/b/a/g/g$a;

.field public D:Z

.field public E:Z

.field public F:J

.field public G:Ljava/nio/channels/SelectableChannel;

.field public H:Lk/a/b/a/d/u;

.field public I:Lk/a/b/a/g/d;

.field public J:Lk/a/b/a/d/c0;

.field public K:Z

.field public L:Z

.field public x:Lk/a/b/a/g/g$a;

.field public y:Lk/a/b/a/g/g$a;

.field public z:Lk/a/b/a/g/g$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/g/i/j;->D:Z

    .line 3
    iput-boolean v0, p0, Lk/a/b/a/g/i/j;->E:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lk/a/b/a/g/i/j;->F:J

    .line 5
    new-instance v0, Lk/a/b/a/d/g0/r;

    invoke-direct {v0}, Lk/a/b/a/d/g0/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/j;->H:Lk/a/b/a/d/u;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/j;->x:Lk/a/b/a/g/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lk/a/b/a/g/g$a;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-void
.end method

.method public I()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/j;->G:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/g/i/j;->D:Z

    return v0
.end method

.method public N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/j;->z:Lk/a/b/a/g/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lk/a/b/a/g/g$a;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/g/i/j;->K:Z

    return v0
.end method

.method public Q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/g/i/j;->F:J

    return-wide v0
.end method

.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lk/a/b/a/g/i/j;->C:Lk/a/b/a/g/g$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lk/a/b/a/g/g$a;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/channels/SelectableChannel;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lk/a/b/a/g/i/j;->G:Ljava/nio/channels/SelectableChannel;

    return-void
.end method

.method public a(Lk/a/b/a/g/g$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lk/a/b/a/g/i/j;->x:Lk/a/b/a/g/g$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/a/b/a/g/i/j;->D:Z

    return-void
.end method

.method public b()Lk/a/b/a/g/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lk/a/b/a/g/i/j;->I:Lk/a/b/a/g/d;

    return-object v0
.end method

.method public b(Lk/a/b/a/g/g$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lk/a/b/a/g/i/j;->y:Lk/a/b/a/g/g$a;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/a/b/a/g/i/j;->E:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lk/a/b/a/g/i/j;->B:Lk/a/b/a/g/g$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lk/a/b/a/g/g$a;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lk/a/b/a/g/i/j;->F:J

    return-void
.end method

.method public c(Lk/a/b/a/g/g$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lk/a/b/a/g/i/j;->C:Lk/a/b/a/g/g$a;

    return-void
.end method

.method public d(Lk/a/b/a/g/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/g/i/j;->z:Lk/a/b/a/g/g$a;

    return-void
.end method

.method public e(Lk/a/b/a/g/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/g/i/j;->A:Lk/a/b/a/g/g$a;

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/b/a/g/i/j;->K:Z

    return-void
.end method

.method public q()Lk/a/b/a/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/j;->H:Lk/a/b/a/d/u;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/g/i/j;->E:Z

    return v0
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/j;->y:Lk/a/b/a/g/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lk/a/b/a/g/g$a;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/j;->A:Lk/a/b/a/g/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lk/a/b/a/g/g$a;->a(Lk/a/b/a/g/g;)V

    :cond_0
    return-void
.end method
