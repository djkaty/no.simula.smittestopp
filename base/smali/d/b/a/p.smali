.class public Ld/b/a/p;
.super Ld/i/i/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    invoke-direct {p0}, Ld/i/i/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->O:Ld/i/i/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/i/i/s;->a(Ld/i/i/t;)Ld/i/i/s;

    .line 3
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iput-object v0, p1, Ld/b/a/k;->O:Ld/i/i/s;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 3
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ld/b/a/p;->a:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld/i/i/n;->y(Landroid/view/View;)V

    :cond_0
    return-void
.end method
