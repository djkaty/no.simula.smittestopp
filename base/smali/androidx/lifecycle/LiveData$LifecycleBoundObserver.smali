.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.a;",
        "Ld/o/j;"
    }
.end annotation


# instance fields
.field public final B:Ld/o/l;

.field public final synthetic C:Landroidx/lifecycle/LiveData;


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->B:Ld/o/l;

    invoke-interface {p1}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p1

    check-cast p1, Ld/o/m;

    .line 2
    iget-object p1, p1, Ld/o/m;->b:Ld/o/g$b;

    .line 3
    sget-object p2, Ld/o/g$b;->DESTROYED:Ld/o/g$b;

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->C:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$a;->x:Ld/o/r;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->a(Ld/o/r;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->B:Ld/o/l;

    invoke-interface {p1}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p1

    check-cast p1, Ld/o/m;

    .line 6
    iget-object p1, p1, Ld/o/m;->b:Ld/o/g$b;

    .line 7
    sget-object p2, Ld/o/g$b;->STARTED:Ld/o/g$b;

    invoke-virtual {p1, p2}, Ld/o/g$b;->isAtLeast(Ld/o/g$b;)Z

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    return-void
.end method
