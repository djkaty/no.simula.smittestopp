.class public final Lk/a/b/a/b/n/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Lk/a/b/a/b/n/o;

.field public b:Lk/a/b/a/b/h;

.field public c:Lk/a/b/a/b/h;

.field public d:Z

.field public e:Lk/a/b/a/b/n/e;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    iput-object v0, p0, Lk/a/b/a/b/n/g;->a:Lk/a/b/a/b/n/o;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/h;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lk/a/b/a/b/n/g;->b:Lk/a/b/a/b/h;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the first field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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

    .line 5
    check-cast p1, Lk/a/b/a/d/g0/a0;

    if-eqz p1, :cond_7

    .line 6
    check-cast p3, Ljava/lang/Integer;

    .line 7
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/d/g0/k0;

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object p2, p0, Lk/a/b/a/b/n/g;->b:Lk/a/b/a/b/h;

    .line 9
    iget-object p3, p0, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    if-nez p3, :cond_1

    move-object p3, p2

    .line 10
    :cond_1
    iget-object v0, p0, Lk/a/b/a/b/n/g;->a:Lk/a/b/a/b/n/o;

    .line 11
    sget-object v1, Lk/a/b/a/b/n/o;->RECEIVER:Lk/a/b/a/b/n/o;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lk/a/b/a/d/g0/k0;->q:Ljava/util/Map;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lk/a/b/a/d/g0/k0;->p:Ljava/util/Map;

    .line 12
    :goto_0
    invoke-virtual {p2, p3}, Lk/a/b/a/b/h;->b(Lk/a/b/a/b/h;)I

    move-result v1

    if-gtz v1, :cond_6

    .line 13
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/g0/e;

    if-eqz v1, :cond_5

    .line 14
    iget-object v2, p0, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 15
    iput-object v2, v1, Lk/a/b/a/d/g0/e;->L:Lk/a/b/a/b/n/e;

    .line 16
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->R:Z

    .line 17
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    iget-boolean v4, p0, Lk/a/b/a/b/n/g;->d:Z

    .line 19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->K:Z

    .line 21
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->R:Z

    .line 22
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_4
    invoke-virtual {v1}, Lk/a/b/a/d/g0/e;->n()V

    .line 24
    iget-object v2, p1, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 25
    iget-object v2, v2, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 26
    sget-object v3, Lk/a/b/a/d/h$b;->DELIVERY:Lk/a/b/a/d/h$b;

    invoke-virtual {v2, v3, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 27
    :cond_5
    sget-object v1, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {p2, v1}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p2

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public a(Lk/a/b/a/b/n/o;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lk/a/b/a/b/n/g;->a:Lk/a/b/a/b/n/o;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Role cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Disposition{role="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/g;->a:Lk/a/b/a/b/n/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/g;->b:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/g;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batchable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/g;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
