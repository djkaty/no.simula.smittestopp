.class public Ld/o/v;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/o/v$b;,
        Ld/o/v$a;
    }
.end annotation


# instance fields
.field public x:Ld/o/v$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Ld/o/v;
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Ld/o/v;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ld/o/g$a;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ld/o/n;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ld/o/n;

    invoke-interface {p0}, Ld/o/n;->getLifecycle()Ld/o/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/o/m;->a(Ld/o/g$a;)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p0, Ld/o/l;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ld/o/l;

    invoke-interface {p0}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p0

    .line 5
    instance-of v0, p0, Ld/o/m;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Ld/o/m;

    invoke-virtual {p0, p1}, Ld/o/m;->a(Ld/o/g$a;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ld/o/v$b;

    invoke-direct {v0}, Ld/o/v$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Ld/o/v;

    invoke-direct {v2}, Ld/o/v;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ld/o/g$a;)V
    .locals 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Ld/o/g$a;->ON_CREATE:Ld/o/g$a;

    invoke-virtual {p0, p1}, Ld/o/v;->a(Ld/o/g$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Ld/o/g$a;->ON_DESTROY:Ld/o/g$a;

    invoke-virtual {p0, v0}, Ld/o/v;->a(Ld/o/g$a;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld/o/v;->x:Ld/o/v$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Ld/o/g$a;->ON_PAUSE:Ld/o/g$a;

    invoke-virtual {p0, v0}, Ld/o/v;->a(Ld/o/g$a;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Ld/o/v;->x:Ld/o/v$a;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Ld/o/t$b;

    .line 4
    iget-object v0, v0, Ld/o/t$b;->a:Ld/o/t;

    .line 5
    iget v1, v0, Ld/o/t;->y:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Ld/o/t;->y:I

    if-ne v1, v2, :cond_1

    .line 6
    iget-boolean v1, v0, Ld/o/t;->z:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Ld/o/t;->C:Ld/o/m;

    sget-object v2, Ld/o/g$a;->ON_RESUME:Ld/o/g$a;

    invoke-virtual {v1, v2}, Ld/o/m;->a(Ld/o/g$a;)V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Ld/o/t;->z:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Ld/o/t;->B:Landroid/os/Handler;

    iget-object v0, v0, Ld/o/t;->D:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Ld/o/g$a;->ON_RESUME:Ld/o/g$a;

    invoke-virtual {p0, v0}, Ld/o/v;->a(Ld/o/g$a;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Ld/o/v;->x:Ld/o/v$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ld/o/t$b;

    .line 4
    iget-object v0, v0, Ld/o/t$b;->a:Ld/o/t;

    .line 5
    iget v1, v0, Ld/o/t;->x:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Ld/o/t;->x:I

    if-ne v1, v2, :cond_0

    .line 6
    iget-boolean v1, v0, Ld/o/t;->A:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Ld/o/t;->C:Ld/o/m;

    sget-object v2, Ld/o/g$a;->ON_START:Ld/o/g$a;

    invoke-virtual {v1, v2}, Ld/o/m;->a(Ld/o/g$a;)V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Ld/o/t;->A:Z

    .line 9
    :cond_0
    sget-object v0, Ld/o/g$a;->ON_START:Ld/o/g$a;

    invoke-virtual {p0, v0}, Ld/o/v;->a(Ld/o/g$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    invoke-virtual {p0, v0}, Ld/o/v;->a(Ld/o/g$a;)V

    return-void
.end method
