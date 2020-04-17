.class public Ld/b/a/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ld/b/d/a$a;

.field public final synthetic b:Ld/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/k;Ld/b/d/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld/b/a/k$d;->a:Ld/b/d/a$a;

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/a;)V
    .locals 2

    .line 3
    iget-object v0, p0, Ld/b/a/k$d;->a:Ld/b/d/a$a;

    invoke-interface {v0, p1}, Ld/b/d/a$a;->a(Ld/b/d/a;)V

    .line 4
    iget-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object v0, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object v0, v0, Ld/b/a/k;->N:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object v0, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ld/b/a/k;->e()V

    .line 8
    iget-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object v0, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/i/i/s;->a(F)Ld/i/i/s;

    iput-object v0, p1, Ld/b/a/k;->O:Ld/i/i/s;

    .line 9
    iget-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->O:Ld/i/i/s;

    new-instance v0, Ld/b/a/k$d$a;

    invoke-direct {v0, p0}, Ld/b/a/k$d$a;-><init>(Ld/b/a/k$d;)V

    .line 10
    iget-object v1, p1, Ld/i/i/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1, v1, v0}, Ld/i/i/s;->a(Landroid/view/View;Ld/i/i/t;)V

    .line 12
    :cond_1
    iget-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object v0, p1, Ld/b/a/k;->D:Ld/b/a/i;

    if-eqz v0, :cond_2

    .line 13
    iget-object p1, p1, Ld/b/a/k;->K:Ld/b/d/a;

    invoke-interface {v0, p1}, Ld/b/a/i;->b(Ld/b/d/a;)V

    .line 14
    :cond_2
    iget-object p1, p0, Ld/b/a/k$d;->b:Ld/b/a/k;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/a/k;->K:Ld/b/d/a;

    return-void
.end method

.method public a(Ld/b/d/a;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/k$d;->a:Ld/b/d/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/d/a$a;->a(Ld/b/d/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Ld/b/d/a;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/a/k$d;->a:Ld/b/d/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/d/a$a;->a(Ld/b/d/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Ld/b/d/a;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/k$d;->a:Ld/b/d/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/d/a$a;->b(Ld/b/d/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
