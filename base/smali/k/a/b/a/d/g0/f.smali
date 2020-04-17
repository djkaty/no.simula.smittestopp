.class public abstract Lk/a/b/a/d/g0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/p;


# instance fields
.field public A:Lk/a/b/a/b/n/j;

.field public B:Z

.field public C:Lk/a/b/a/d/g0/f;

.field public D:Lk/a/b/a/d/g0/f;

.field public E:Lk/a/b/a/d/u;

.field public F:I

.field public G:Z

.field public x:Lk/a/b/a/d/g;

.field public y:Lk/a/b/a/d/g;

.field public z:Lk/a/b/a/b/n/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    iput-object v0, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 3
    iput-object v0, p0, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 4
    new-instance v0, Lk/a/b/a/b/n/j;

    invoke-direct {v0}, Lk/a/b/a/b/n/j;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    .line 5
    new-instance v0, Lk/a/b/a/b/n/j;

    invoke-direct {v0}, Lk/a/b/a/b/n/j;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/f;->A:Lk/a/b/a/b/n/j;

    .line 6
    new-instance v0, Lk/a/b/a/d/g0/r;

    invoke-direct {v0}, Lk/a/b/a/d/g0/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/f;->E:Lk/a/b/a/d/u;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lk/a/b/a/d/g0/f;->F:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lk/a/b/a/d/g0/f;->G:Z

    return-void
.end method


# virtual methods
.method public abstract B()V
.end method

.method public abstract F()V
.end method

.method public H()Lk/a/b/a/b/n/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->A:Lk/a/b/a/b/n/j;

    return-object v0
.end method

.method public J()Lk/a/b/a/d/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    return-object v0
.end method

.method public L()Lk/a/b/a/b/n/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    return-object v0
.end method

.method public abstract S()V
.end method

.method public final a()V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lk/a/b/a/d/g0/f;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lk/a/b/a/d/g0/f;->G:Z

    .line 8
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->n()V

    .line 9
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->i()V

    return-void
.end method

.method public a(Lk/a/b/a/b/n/j;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    invoke-virtual {v0, p1}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/n/j;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    .line 4
    iput-object v0, p1, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p1, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/f;->B:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/f;->B:Z

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->o()Lk/a/b/a/d/g0/d;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lk/a/b/a/d/g0/d;->I:Lk/a/b/a/d/g0/f;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    iput-object v2, p0, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    .line 6
    iput-object v2, p0, Lk/a/b/a/d/g0/f;->D:Lk/a/b/a/d/g0/f;

    .line 7
    iput-object p0, v0, Lk/a/b/a/d/g0/d;->I:Lk/a/b/a/d/g0/f;

    iput-object p0, v0, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p0, v1, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    .line 9
    iput-object v1, p0, Lk/a/b/a/d/g0/f;->D:Lk/a/b/a/d/g0/f;

    .line 10
    iput-object p0, v0, Lk/a/b/a/d/g0/d;->I:Lk/a/b/a/d/g0/f;

    .line 11
    iput-object v2, p0, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->o()Lk/a/b/a/d/g0/d;

    move-result-object p1

    .line 13
    iget-object v0, p1, Lk/a/b/a/d/g0/d;->R:Lk/a/b/a/d/g0/a0;

    if-eqz v0, :cond_2

    .line 14
    sget-object v1, Lk/a/b/a/d/h$b;->TRANSPORT:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, v1, v0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 2
    sget-object v1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-eq v0, v1, :cond_0

    .line 3
    iput-object v1, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->B()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/f;->c(Z)V

    :cond_0
    return-void
.end method

.method public e()Lk/a/b/a/d/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/f;->B:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/f;->B:Z

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->o()Lk/a/b/a/d/g0/d;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    if-ne v1, p0, :cond_0

    .line 5
    iget-object v1, p0, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    .line 6
    iput-object v1, v0, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lk/a/b/a/d/g0/f;->D:Lk/a/b/a/d/g0/f;

    .line 8
    iget-object v2, p0, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    .line 9
    iput-object v2, v1, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    .line 10
    :goto_0
    iget-object v1, v0, Lk/a/b/a/d/g0/d;->I:Lk/a/b/a/d/g0/f;

    if-ne v1, p0, :cond_1

    .line 11
    iget-object v1, p0, Lk/a/b/a/d/g0/f;->D:Lk/a/b/a/d/g0/f;

    .line 12
    iput-object v1, v0, Lk/a/b/a/d/g0/d;->I:Lk/a/b/a/d/g0/f;

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    .line 14
    iget-object v1, p0, Lk/a/b/a/d/g0/f;->D:Lk/a/b/a/d/g0/f;

    .line 15
    iput-object v1, v0, Lk/a/b/a/d/g0/f;->D:Lk/a/b/a/d/g0/f;

    :cond_2
    :goto_1
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/f;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk/a/b/a/d/g0/f;->F:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->S()V

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract n()V
.end method

.method public abstract o()Lk/a/b/a/d/g0/d;
.end method

.method public open()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 2
    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    if-eq v0, v1, :cond_0

    .line 3
    iput-object v1, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/d/g0/f;->F()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/f;->c(Z)V

    :cond_0
    return-void
.end method

.method public q()Lk/a/b/a/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->E:Lk/a/b/a/d/u;

    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/f;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/a/b/a/d/g0/f;->F:I

    return-void
.end method
