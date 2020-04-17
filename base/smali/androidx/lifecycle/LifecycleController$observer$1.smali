.class public final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# virtual methods
.method public final a(Ld/o/l;Ld/o/g$a;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p1}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p2

    const-string v1, "source.lifecycle"

    invoke-static {p2, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ld/o/m;

    .line 2
    iget-object p2, p2, Ld/o/m;->b:Ld/o/g$b;

    .line 3
    sget-object v2, Ld/o/g$b;->DESTROYED:Ld/o/g$b;

    if-ne p2, v2, :cond_0

    .line 4
    throw v0

    .line 5
    :cond_0
    invoke-interface {p1}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p1

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ld/o/m;

    .line 6
    throw v0

    :cond_1
    const-string p1, "<anonymous parameter 1>"

    .line 7
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "source"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
