.class public final Lk/a/b/a/b/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Lk/a/b/a/b/n/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 1
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

    if-eqz p1, :cond_2

    .line 2
    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object p2, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/a/b/a/d/g0/k0;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p2, Lk/a/b/a/d/g0/k0;->s:Z

    .line 6
    invoke-virtual {p2}, Lk/a/b/a/d/g0/k0;->c()V

    .line 7
    iget-object p2, p2, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 8
    sget-object p3, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    .line 9
    iput-object p3, p2, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 10
    iget-object p3, p0, Lk/a/b/a/b/n/i;->a:Lk/a/b/a/b/n/j;

    if-eqz p3, :cond_1

    .line 11
    iget-object v0, p2, Lk/a/b/a/d/g0/f;->A:Lk/a/b/a/b/n/j;

    .line 12
    invoke-virtual {v0, p3}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/n/j;)V

    .line 13
    :cond_1
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object p3, Lk/a/b/a/d/h$b;->SESSION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p3, p2}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "End{error="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/i;->a:Lk/a/b/a/b/n/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
