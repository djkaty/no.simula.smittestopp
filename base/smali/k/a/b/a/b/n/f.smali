.class public final Lk/a/b/a/b/n/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Lk/a/b/a/b/h;

.field public b:Z

.field public c:Lk/a/b/a/b/n/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 3
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

    if-eqz p1, :cond_4

    .line 2
    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lk/a/b/a/d/g0/k0;

    if-nez p3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lk/a/b/a/b/n/f;->a:Lk/a/b/a/b/h;

    .line 5
    invoke-virtual {p3, v0}, Lk/a/b/a/d/g0/k0;->a(Lk/a/b/a/b/h;)Lk/a/b/a/d/g0/e0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, v0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Lk/a/b/a/d/g0/e0;->h:Z

    .line 8
    iget-object v2, v0, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    .line 9
    iget-object p3, p3, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean p3, p0, Lk/a/b/a/b/n/f;->b:Z

    if-eqz p3, :cond_1

    .line 11
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object p3, Lk/a/b/a/d/h$b;->LINK_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p3, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object p3, Lk/a/b/a/d/h$b;->LINK_REMOTE_DETACH:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p3, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 13
    :goto_0
    iget-object p1, v0, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, v0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/f;->i()V

    .line 15
    :cond_2
    iput-object p2, v0, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    .line 16
    sget-object p1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    .line 17
    iput-object p1, v1, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 18
    iget-object p1, p0, Lk/a/b/a/b/n/f;->c:Lk/a/b/a/b/n/j;

    if-eqz p1, :cond_3

    .line 19
    iget-object p2, v1, Lk/a/b/a/d/g0/f;->A:Lk/a/b/a/b/n/j;

    .line 20
    invoke-virtual {p2, p1}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/n/j;)V

    :cond_3
    :goto_1
    return-void

    .line 21
    :cond_4
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Detach{handle="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/f;->a:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/f;->c:Lk/a/b/a/b/n/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
