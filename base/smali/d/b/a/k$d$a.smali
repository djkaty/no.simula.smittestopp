.class public Ld/b/a/k$d$a;
.super Ld/i/i/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/k$d;->a(Ld/b/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/a/k$d;


# direct methods
.method public constructor <init>(Ld/b/a/k$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    invoke-direct {p0}, Ld/i/i/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    iget-object p1, p1, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    iget-object p1, p1, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object v0, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    iget-object p1, p1, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld/i/i/n;->y(Landroid/view/View;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    iget-object p1, p1, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    iget-object p1, p1, Ld/b/a/k$d;->b:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->O:Ld/i/i/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/i/i/s;->a(Ld/i/i/t;)Ld/i/i/s;

    .line 8
    iget-object p1, p0, Ld/b/a/k$d$a;->a:Ld/b/a/k$d;

    iget-object p1, p1, Ld/b/a/k$d;->b:Ld/b/a/k;

    iput-object v0, p1, Ld/b/a/k;->O:Ld/i/i/s;

    return-void
.end method
