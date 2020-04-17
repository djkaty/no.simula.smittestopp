.class public Ld/b/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Ld/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/o;->x:Ld/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object v1, v0, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    iget-object v0, v0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v1, v0, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    invoke-virtual {v0}, Ld/b/a/k;->e()V

    .line 3
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    invoke-virtual {v0}, Ld/b/a/k;->l()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object v0, v0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object v2, v0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld/i/i/s;->a(F)Ld/i/i/s;

    iput-object v2, v0, Ld/b/a/k;->O:Ld/i/i/s;

    .line 6
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object v0, v0, Ld/b/a/k;->O:Ld/i/i/s;

    new-instance v1, Ld/b/a/o$a;

    invoke-direct {v1, p0}, Ld/b/a/o$a;-><init>(Ld/b/a/o;)V

    .line 7
    iget-object v2, v0, Ld/i/i/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, v2, v1}, Ld/i/i/s;->a(Landroid/view/View;Ld/i/i/t;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object v0, v0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object v0, v0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
