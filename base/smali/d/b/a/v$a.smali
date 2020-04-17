.class public Ld/b/a/v$a;
.super Ld/i/i/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/a/v;


# direct methods
.method public constructor <init>(Ld/b/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    invoke-direct {p0}, Ld/i/i/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    iget-boolean v0, p1, Ld/b/a/v;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/b/a/v;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    iget-object p1, p1, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    iget-object p1, p1, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    iget-object p1, p1, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/a/v;->u:Ld/b/d/g;

    .line 7
    iget-object v1, p1, Ld/b/a/v;->k:Ld/b/d/a$a;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p1, Ld/b/a/v;->j:Ld/b/d/a;

    invoke-interface {v1, v2}, Ld/b/d/a$a;->a(Ld/b/d/a;)V

    .line 9
    iput-object v0, p1, Ld/b/a/v;->j:Ld/b/d/a;

    .line 10
    iput-object v0, p1, Ld/b/a/v;->k:Ld/b/d/a$a;

    .line 11
    :cond_1
    iget-object p1, p0, Ld/b/a/v$a;->a:Ld/b/a/v;

    iget-object p1, p1, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 12
    invoke-static {p1}, Ld/i/i/n;->y(Landroid/view/View;)V

    :cond_2
    return-void
.end method
