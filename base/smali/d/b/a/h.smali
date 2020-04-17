.class public Ld/b/a/h;
.super Ld/m/a/c;
.source "SourceFile"

# interfaces
.implements Ld/b/a/i;
.implements Ld/i/a/l$a;


# instance fields
.field public x:Ld/b/a/j;

.field public y:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/m/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/a$a;)Ld/b/d/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ld/b/d/a;)V
    .locals 0

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/a/j;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object p1

    check-cast p1, Ld/b/a/k;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ld/b/a/k;->a(Z)Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Ld/b/a/k;->f0:Z

    return-void
.end method

.method public b(Ld/b/d/a;)V
    .locals 0

    return-void
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Ld/b/a/r;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->k()Ld/b/a/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->k()Ld/b/a/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Ld/b/a/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ld/i/a/d;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    .line 2
    invoke-virtual {v0}, Ld/b/a/k;->f()V

    .line 3
    iget-object v0, v0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    .line 2
    iget-object v1, v0, Ld/b/a/k;->F:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ld/b/a/k;->k()V

    .line 4
    new-instance v1, Ld/b/d/f;

    iget-object v2, v0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Ld/b/a/a;->d()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ld/b/a/k;->A:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Ld/b/d/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ld/b/a/k;->F:Landroid/view/MenuInflater;

    .line 6
    :cond_1
    iget-object v0, v0, Ld/b/a/k;->F:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/h;->y:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Ld/b/e/c1;->a()Z

    .line 2
    :cond_0
    iget-object v0, p0, Ld/b/a/h;->y:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/j;->b()V

    return-void
.end method

.method public j()Ld/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/h;->x:Ld/b/a/j;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p0}, Ld/b/a/j;->a(Landroid/app/Activity;Ld/b/a/i;)Ld/b/a/j;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/h;->x:Ld/b/a/j;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/a/h;->x:Ld/b/a/j;

    return-object v0
.end method

.method public k()Ld/b/a/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    .line 2
    invoke-virtual {v0}, Ld/b/a/k;->k()V

    .line 3
    iget-object v0, v0, Ld/b/a/k;->E:Ld/b/a/a;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ld/m/a/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Ld/b/a/h;->y:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ld/b/a/h;->y:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    .line 6
    iget-boolean v1, v0, Ld/b/a/k;->W:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Ld/b/a/k;->Q:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ld/b/a/k;->k()V

    .line 8
    iget-object v1, v0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, p1}, Ld/b/a/a;->a(Landroid/content/res/Configuration;)V

    .line 10
    :cond_1
    invoke-static {}, Ld/b/e/j;->a()Ld/b/e/j;

    move-result-object p1

    iget-object v1, v0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {p1, v1}, Ld/b/e/j;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Ld/b/a/k;->a(Z)Z

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ld/b/a/j;->a()V

    .line 3
    invoke-virtual {v0, p1}, Ld/b/a/j;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-super {p0, p1}, Ld/m/a/c;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Ld/m/a/c;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    if-eqz v0, :cond_4

    .line 3
    invoke-static {v0}, Ld/b/a/j;->b(Ld/b/a/j;)V

    .line 4
    iget-boolean v1, v0, Ld/b/a/k;->p0:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Ld/b/a/k;->r0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Ld/b/a/k;->h0:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Ld/b/a/k;->i0:Z

    .line 8
    iget-object v1, v0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ld/b/a/a;->f()V

    .line 10
    :cond_1
    iget-object v1, v0, Ld/b/a/k;->n0:Ld/b/a/k$g;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Ld/b/a/k$g;->a()V

    .line 12
    :cond_2
    iget-object v0, v0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ld/b/a/k$g;->a()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 9
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ld/m/a/c;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ld/b/a/h;->k()Ld/b/a/a;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_6

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Ld/b/a/a;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_6

    .line 5
    invoke-static {p0}, Ld/b/a/r;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    new-instance p1, Ld/i/a/l;

    invoke-direct {p1, p0}, Ld/i/a/l;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-interface {p0}, Ld/i/a/l$a;->c()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    invoke-static {p0}, Ld/b/a/r;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p1, Ld/i/a/l;->y:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 12
    :cond_2
    invoke-virtual {p1, v1}, Ld/i/a/l;->a(Landroid/content/ComponentName;)Ld/i/a/l;

    .line 13
    iget-object v1, p1, Ld/i/a/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    invoke-virtual {p1}, Ld/i/a/l;->a()V

    .line 15
    :try_start_0
    invoke-static {p0}, Ld/i/a/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v2
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ld/m/a/c;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object p1

    check-cast p1, Ld/b/a/k;

    .line 3
    invoke-virtual {p1}, Ld/b/a/k;->f()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Ld/m/a/c;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    .line 3
    invoke-virtual {v0}, Ld/b/a/k;->k()V

    .line 4
    iget-object v0, v0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ld/b/a/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ld/m/a/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object p1

    check-cast p1, Ld/b/a/k;

    .line 3
    iget v0, p1, Ld/b/a/k;->j0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Ld/b/a/k;->w0:Ljava/util/Map;

    iget-object v1, p1, Ld/b/a/k;->z:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget p1, p1, Ld/b/a/k;->j0:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Ld/m/a/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Ld/b/a/k;->h0:Z

    .line 4
    invoke-virtual {v0}, Ld/b/a/k;->d()Z

    .line 5
    invoke-static {v0}, Ld/b/a/j;->a(Ld/b/a/j;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ld/m/a/c;->onStop()V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/j;->c()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Ld/b/a/j;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->k()Ld/b/a/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/b/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/a/j;->b(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/a/j;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/a/j;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 2
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    .line 3
    iput p1, v0, Ld/b/a/k;->k0:I

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/j;->b()V

    return-void
.end method
