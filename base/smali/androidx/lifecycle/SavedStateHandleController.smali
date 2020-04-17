.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$a;
    }
.end annotation


# instance fields
.field public final x:Ljava/lang/String;

.field public y:Z

.field public final z:Ld/o/w;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld/o/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->y:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->x:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->z:Ld/o/w;

    return-void
.end method

.method public static b(Ld/v/a;Ld/o/g;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Ld/o/m;

    .line 2
    iget-object v0, v0, Ld/o/m;->b:Ld/o/g$b;

    .line 3
    sget-object v1, Ld/o/g$b;->INITIALIZED:Ld/o/g$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Ld/o/g$b;->STARTED:Ld/o/g$b;

    invoke-virtual {v0, v1}, Ld/o/g$b;->isAtLeast(Ld/o/g$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Ld/o/g;Ld/v/a;)V

    invoke-virtual {p1, v0}, Ld/o/g;->a(Ld/o/k;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p0, p1}, Ld/v/a;->a(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 1

    .line 9
    sget-object v0, Ld/o/g$a;->ON_DESTROY:Ld/o/g$a;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->y:Z

    .line 11
    invoke-interface {p1}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p1

    check-cast p1, Ld/o/m;

    .line 12
    iget-object p1, p1, Ld/o/m;->a:Ld/c/a/b/a;

    invoke-virtual {p1, p0}, Ld/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ld/v/a;Ld/o/g;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->y:Z

    .line 3
    invoke-virtual {p2, p0}, Ld/o/g;->a(Ld/o/k;)V

    .line 4
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->x:Ljava/lang/String;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->z:Ld/o/w;

    .line 5
    iget-object v0, v0, Ld/o/w;->b:Ld/v/a$b;

    .line 6
    iget-object p1, p1, Ld/v/a;->a:Ld/c/a/b/b;

    invoke-virtual {p1, p2, v0}, Ld/c/a/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/v/a$b;

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SavedStateProvider with the given key is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
