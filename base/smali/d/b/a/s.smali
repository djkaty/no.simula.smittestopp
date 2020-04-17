.class public Ld/b/a/s;
.super Ld/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/s$d;,
        Ld/b/a/s$c;,
        Ld/b/a/s$e;
    }
.end annotation


# instance fields
.field public a:Ld/b/e/d0;

.field public b:Z

.field public c:Landroid/view/Window$Callback;

.field public d:Z

.field public e:Z

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroidx/appcompat/widget/Toolbar$f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/b/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/s;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ld/b/a/s$a;

    invoke-direct {v0, p0}, Ld/b/a/s$a;-><init>(Ld/b/a/s;)V

    iput-object v0, p0, Ld/b/a/s;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ld/b/a/s$b;

    invoke-direct {v0, p0}, Ld/b/a/s$b;-><init>(Ld/b/a/s;)V

    iput-object v0, p0, Ld/b/a/s;->h:Landroidx/appcompat/widget/Toolbar$f;

    .line 5
    new-instance v0, Ld/b/e/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ld/b/e/z0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    .line 6
    new-instance v0, Ld/b/a/s$e;

    invoke-direct {v0, p0, p3}, Ld/b/a/s$e;-><init>(Ld/b/a/s;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {p3, v0}, Ld/b/e/d0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 8
    iget-object p3, p0, Ld/b/a/s;->h:Landroidx/appcompat/widget/Toolbar$f;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 9
    iget-object p1, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {p1, p2}, Ld/b/e/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->c(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 12
    iget-boolean v0, p0, Ld/b/a/s;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 13
    :cond_0
    iput-boolean p1, p0, Ld/b/a/s;->e:Z

    .line 14
    iget-object v0, p0, Ld/b/a/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    iget-object v2, p0, Ld/b/a/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/a/a$b;

    invoke-interface {v2, p1}, Ld/b/a/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->c()Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 7
    invoke-virtual {p0}, Ld/b/a/s;->h()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 9
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 11
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {p1}, Ld/b/e/d0;->d()Z

    :cond_0
    return v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .line 3
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->h()I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v1}, Ld/b/e/d0;->h()I

    move-result v1

    .line 2
    iget-object v2, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    and-int/2addr p1, v0

    const/4 v0, -0x5

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Ld/b/e/d0;->d(I)V

    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->j()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ld/b/a/s;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->j()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ld/b/a/s;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Ld/i/i/n;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->j()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ld/b/a/s;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->d()Z

    move-result v0

    return v0
.end method

.method public final h()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld/b/a/s;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    new-instance v1, Ld/b/a/s$c;

    invoke-direct {v1, p0}, Ld/b/a/s$c;-><init>(Ld/b/a/s;)V

    new-instance v2, Ld/b/a/s$d;

    invoke-direct {v2, p0}, Ld/b/a/s$d;-><init>(Ld/b/a/s;)V

    invoke-interface {v0, v1, v2}, Ld/b/e/d0;->a(Ld/b/d/i/m$a;Ld/b/d/i/g$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld/b/a/s;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->i()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
