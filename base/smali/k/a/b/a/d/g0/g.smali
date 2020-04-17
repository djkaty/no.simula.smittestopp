.class public Lk/a/b/a/d/g0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/h;


# instance fields
.field public A:Lk/a/b/a/d/g0/r;

.field public B:Lk/a/b/a/d/l;

.field public x:Lk/a/b/a/d/i;

.field public y:Ljava/lang/Object;

.field public z:Lk/a/b/a/d/g0/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/r;

    invoke-direct {v0}, Lk/a/b/a/d/g0/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/g;->A:Lk/a/b/a/d/g0/r;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;

    .line 4
    iput-object v0, p0, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    return-void
.end method


# virtual methods
.method public G()Lk/a/b/a/d/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/n;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/n;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->h()Lk/a/b/a/d/e;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    invoke-interface {v0}, Lk/a/b/a/d/e;->G()Lk/a/b/a/d/n;

    move-result-object v0

    return-object v0
.end method

.method public T()Lk/a/b/a/d/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/y;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/y;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    invoke-interface {v0}, Lk/a/b/a/d/n;->T()Lk/a/b/a/d/y;

    move-result-object v0

    return-object v0
.end method

.method public U()Lk/a/b/a/d/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/c;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/c;

    return-object v0

    .line 3
    :cond_0
    instance-of v0, v0, Lk/a/b/a/d/c0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->l()Lk/a/b/a/d/c0;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    check-cast v0, Lk/a/b/a/d/g0/a0;

    .line 6
    iget-object v0, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 8
    :cond_3
    invoke-interface {v0}, Lk/a/b/a/d/y;->U()Lk/a/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lk/a/b/a/d/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;

    .line 2
    :try_start_0
    iput-object p1, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {p1, p0}, Lk/a/b/a/d/l;->handle(Lk/a/b/a/d/h;)V
    :try_end_1
    .catch Lk/a/b/a/d/m; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget-object p1, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;

    if-nez p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Lk/a/b/a/d/l;->children()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/l;

    invoke-virtual {p0, v1}, Lk/a/b/a/d/g0/g;->a(Lk/a/b/a/d/l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iput-object v0, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;

    return-void

    :catch_0
    move-exception v1

    .line 10
    :try_start_3
    new-instance v2, Lk/a/b/a/d/m;

    invoke-direct {v2, p1, v1}, Lk/a/b/a/d/m;-><init>(Lk/a/b/a/d/l;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 11
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    iput-object v0, p0, Lk/a/b/a/d/g0/g;->B:Lk/a/b/a/d/l;

    .line 13
    throw p1
.end method

.method public b()Lk/a/b/a/g/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/g/d;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/g/d;

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lk/a/b/a/g/h;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lk/a/b/a/g/h;

    invoke-interface {v0}, Lk/a/b/a/g/h;->b()Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    instance-of v1, v0, Lk/a/b/a/d/c0;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lk/a/b/a/d/g0/a0;

    .line 7
    iget-object v0, v0, Lk/a/b/a/d/g0/a0;->w0:Lk/a/b/a/g/d;

    return-object v0

    .line 8
    :cond_2
    instance-of v1, v0, Lk/a/b/a/d/e;

    if-eqz v1, :cond_3

    .line 9
    check-cast v0, Lk/a/b/a/d/e;

    invoke-interface {v0}, Lk/a/b/a/d/e;->G()Lk/a/b/a/d/n;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/n;->T()Lk/a/b/a/d/y;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/y;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/c;->b()Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    .line 10
    :cond_3
    instance-of v1, v0, Lk/a/b/a/d/n;

    if-eqz v1, :cond_4

    .line 11
    check-cast v0, Lk/a/b/a/d/n;

    invoke-interface {v0}, Lk/a/b/a/d/n;->T()Lk/a/b/a/d/y;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/y;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/c;->b()Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    instance-of v1, v0, Lk/a/b/a/d/y;

    if-eqz v1, :cond_5

    .line 13
    check-cast v0, Lk/a/b/a/d/y;

    invoke-interface {v0}, Lk/a/b/a/d/y;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/c;->b()Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    .line 14
    :cond_5
    instance-of v1, v0, Lk/a/b/a/d/c;

    if-eqz v1, :cond_6

    .line 15
    check-cast v0, Lk/a/b/a/d/c;

    invoke-interface {v0}, Lk/a/b/a/d/c;->b()Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    .line 16
    :cond_6
    instance-of v1, v0, Lk/a/b/a/g/g;

    if-eqz v1, :cond_7

    .line 17
    check-cast v0, Lk/a/b/a/g/g;

    invoke-interface {v0}, Lk/a/b/a/g/g;->b()Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lk/a/b/a/d/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/e;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lk/a/b/a/d/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/t;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/t;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lk/a/b/a/d/t;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lk/a/b/a/d/t;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lk/a/b/a/d/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/c0;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/c0;

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lk/a/b/a/d/c;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lk/a/b/a/d/c;

    invoke-interface {v0}, Lk/a/b/a/d/c;->l()Lk/a/b/a/d/c0;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 6
    :cond_2
    invoke-interface {v0}, Lk/a/b/a/d/y;->U()Lk/a/b/a/d/c;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 7
    :cond_3
    invoke-interface {v0}, Lk/a/b/a/d/c;->l()Lk/a/b/a/d/c0;

    move-result-object v0

    return-object v0
.end method

.method public n()Lk/a/b/a/g/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/g/g;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/g/g;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lk/a/b/a/d/x;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/b/a/d/x;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/x;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lk/a/b/a/d/x;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lk/a/b/a/d/x;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lk/a/b/a/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->A:Lk/a/b/a/d/g0/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EventImpl{type="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lk/a/b/a/d/h$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    instance-of v1, v0, Lk/a/b/a/d/h$b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lk/a/b/a/d/h$b;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lk/a/b/a/d/h$b;->NON_CORE_EVENT:Lk/a/b/a/d/h$b;

    return-object v0
.end method
