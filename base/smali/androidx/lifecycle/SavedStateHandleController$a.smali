.class public final Landroidx/lifecycle/SavedStateHandleController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/v/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/v/c;)V
    .locals 6

    .line 1
    instance-of v0, p1, Ld/o/f0;

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Ld/o/f0;

    invoke-interface {v0}, Ld/o/f0;->getViewModelStore()Ld/o/e0;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ld/v/c;->getSavedStateRegistry()Ld/v/a;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 4
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, v0, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/o/y;

    .line 7
    invoke-interface {p1}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object v4

    const-string v5, "androidx.lifecycle.savedstate.vm.tag"

    .line 8
    invoke-virtual {v3, v5}, Ld/o/y;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v3, :cond_0

    .line 9
    iget-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->y:Z

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v3, v1, v4}, Landroidx/lifecycle/SavedStateHandleController;->a(Ld/v/a;Ld/o/g;)V

    .line 11
    invoke-static {v1, v4}, Landroidx/lifecycle/SavedStateHandleController;->b(Ld/v/a;Ld/o/g;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, v0, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {v1, p1}, Ld/v/a;->a(Ljava/lang/Class;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
