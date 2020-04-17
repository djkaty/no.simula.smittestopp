.class public Ld/m/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/m/a/o$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ld/m/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ld/m/a/p;


# direct methods
.method public constructor <init>(Ld/m/a/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    iput-object p1, p0, Ld/m/a/o;->b:Ld/m/a/p;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 9
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 10
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 12
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, p2, v1}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 14
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p3, :cond_1

    .line 15
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 17
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 18
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 20
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, p2, p3, v1}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 22
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p4, :cond_1

    .line 23
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 24
    throw p1

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 25
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 26
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 28
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 30
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 31
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 32
    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Ld/m/a/o;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 9
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 10
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 12
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, p2, v1}, Ld/m/a/o;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 14
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p3, :cond_1

    .line 15
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 17
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 18
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 20
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 22
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 23
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 24
    throw p1

    :cond_2
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Ld/m/a/o;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 9
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 10
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 12
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->c(Landroidx/fragment/app/Fragment;Z)V

    .line 14
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 15
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_2
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 9
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 10
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 12
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, p2, v1}, Ld/m/a/o;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 14
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/o$a;

    if-eqz p3, :cond_1

    .line 15
    iget-boolean p2, p2, Ld/m/a/o$a;->a:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_2
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method

.method public e(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method

.method public g(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/o;->b:Ld/m/a/p;

    .line 2
    iget-object v0, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Ld/m/a/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/o$a;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v0, v0, Ld/m/a/o$a;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2
    return-void
.end method
