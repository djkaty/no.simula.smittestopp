.class public final Lk/a/b/a/b/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lk/a/b/a/b/h;

.field public c:Lk/a/b/a/b/n/o;

.field public d:Lk/a/b/a/b/n/p;

.field public e:Lk/a/b/a/b/n/n;

.field public f:Lk/a/b/a/b/n/q;

.field public g:Lk/a/b/a/b/n/r;

.field public h:Ljava/util/Map;

.field public i:Z

.field public j:Lk/a/b/a/b/h;

.field public k:Lk/a/b/a/b/i;

.field public l:[Lk/a/b/a/b/f;

.field public m:[Lk/a/b/a/b/f;

.field public n:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    iput-object v0, p0, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    .line 3
    sget-object v0, Lk/a/b/a/b/n/p;->MIXED:Lk/a/b/a/b/n/p;

    iput-object v0, p0, Lk/a/b/a/b/n/a;->d:Lk/a/b/a/b/n/p;

    .line 4
    sget-object v0, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    iput-object v0, p0, Lk/a/b/a/b/n/a;->e:Lk/a/b/a/b/n/n;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/b/n/l$a<",
            "TE;>;",
            "Lk/a/b/a/b/a;",
            "TE;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/a0;

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    .line 2
    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lk/a/b/a/d/g0/k0;

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p3, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 5
    iget-object v1, p0, Lk/a/b/a/b/n/a;->b:Lk/a/b/a/b/h;

    .line 6
    iget-object v2, p3, Lk/a/b/a/d/g0/k0;->e:Lk/a/b/a/b/h;

    .line 7
    invoke-virtual {v1, v2}, Lk/a/b/a/b/h;->b(Lk/a/b/a/b/h;)I

    move-result v2

    if-lez v2, :cond_2

    .line 8
    new-instance p3, Lk/a/b/a/b/n/j;

    sget-object v0, Lk/a/b/a/b/n/d;->a:Lk/a/b/a/b/f;

    const-string v1, "handle-max exceeded"

    invoke-direct {p3, v0, v1}, Lk/a/b/a/b/n/j;-><init>(Lk/a/b/a/b/f;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    invoke-virtual {v0, p3}, Lk/a/b/a/d/g0/f;->a(Lk/a/b/a/b/n/j;)V

    .line 10
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object v1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    .line 11
    iput-object v1, v0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 12
    iget-boolean v0, p1, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lk/a/b/a/b/n/c;

    invoke-direct {v0}, Lk/a/b/a/b/n/c;-><init>()V

    .line 14
    iput-object p3, v0, Lk/a/b/a/b/n/c;->a:Lk/a/b/a/b/n/j;

    const/4 p3, 0x1

    .line 15
    iput-boolean p3, p1, Lk/a/b/a/d/g0/a0;->L:Z

    const/4 p3, 0x0

    .line 16
    iget-object v1, p1, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v1, p3, v0, p2, p2}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 17
    :cond_1
    invoke-virtual {p1}, Lk/a/b/a/d/g0/a0;->close_tail()V

    goto :goto_3

    .line 18
    :cond_2
    iget-object v2, p3, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/d/g0/e0;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    iget-object p2, p0, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    .line 20
    iget-object v2, p3, Lk/a/b/a/d/g0/k0;->m:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/a/b/a/d/g0/e0;

    if-nez p2, :cond_5

    .line 21
    iget-object p2, p0, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    .line 22
    sget-object v2, Lk/a/b/a/b/n/o;->RECEIVER:Lk/a/b/a/b/n/o;

    if-ne p2, v2, :cond_4

    .line 23
    iget-object p2, p0, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p2}, Lk/a/b/a/d/g0/y;->a(Ljava/lang/String;)Lk/a/b/a/d/g0/x;

    move-result-object p2

    goto :goto_0

    .line 25
    :cond_4
    iget-object p2, p0, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, p2}, Lk/a/b/a/d/g0/y;->b(Ljava/lang/String;)Lk/a/b/a/d/g0/q;

    move-result-object p2

    .line 27
    :goto_0
    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/m;)Lk/a/b/a/d/g0/e0;

    move-result-object v0

    goto :goto_1

    .line 28
    :cond_5
    iget-object v0, p2, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 29
    :goto_1
    iget-object v2, p0, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    .line 30
    sget-object v3, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    if-ne v2, v3, :cond_6

    .line 31
    iget-object v2, p0, Lk/a/b/a/b/n/a;->j:Lk/a/b/a/b/h;

    .line 32
    iput-object v2, v0, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 33
    :cond_6
    sget-object v2, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    .line 34
    iput-object v2, p2, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 35
    iget-object v2, p0, Lk/a/b/a/b/n/a;->f:Lk/a/b/a/b/n/q;

    .line 36
    iput-object v2, p2, Lk/a/b/a/d/g0/m;->N:Lk/a/b/a/b/n/q;

    .line 37
    iget-object v2, p0, Lk/a/b/a/b/n/a;->g:Lk/a/b/a/b/n/r;

    .line 38
    iput-object v2, p2, Lk/a/b/a/d/g0/m;->P:Lk/a/b/a/b/n/r;

    .line 39
    iget-object v2, p0, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    .line 40
    iput-object v2, v0, Lk/a/b/a/d/g0/e0;->b:Ljava/lang/String;

    .line 41
    iget-object v2, v0, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    if-nez v2, :cond_7

    .line 42
    iget-object v2, v0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    invoke-virtual {v2}, Lk/a/b/a/d/g0/f;->w()V

    .line 43
    :cond_7
    iput-object v1, v0, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    .line 44
    iget-object p3, p3, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_2
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object p3, Lk/a/b/a/d/h$b;->LINK_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p3, p2}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :goto_3
    return-void

    .line 46
    :cond_8
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Attach{name=\'"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", handle="

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lk/a/b/a/b/n/a;->b:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sndSettleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->d:Lk/a/b/a/b/n/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rcvSettleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->e:Lk/a/b/a/b/n/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->f:Lk/a/b/a/b/n/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->g:Lk/a/b/a/b/n/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unsettled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", incompleteUnsettled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", initialDeliveryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->j:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->k:Lk/a/b/a/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offeredCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->l:[Lk/a/b/a/b/f;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", desiredCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->m:[Lk/a/b/a/b/f;

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/a;->n:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
